import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localizations.dart';
import 'package:flutter_localization/language_selector_page.dart';
import 'package:flutter_localization/locale_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: Consumer<LocaleProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            title: 'Multi-Language App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // Define supported locales
            supportedLocales: const [
              Locale('en', 'US'), // English
              Locale('hi', 'IN'), // Hindi
              Locale('gu', 'IN'), // Gujarati
              Locale('ar'), // Arabic
              Locale('he', 'IL'), // Israeli Hebrew
            ],
            // Set default locale
            locale: provider.locale,
            // Define localizations delegates for different languages
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              AppLocalizations
                  .delegate, // Custom delegate for app-specific localization
              ...GlobalMaterialLocalizations
                  .delegates, // Add this line to include CupertinoLocalizations
            ],
            // Provide CupertinoLocalizations.delegate
            localeResolutionCallback: (locale, supportedLocales) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale?.languageCode &&
                    supportedLocale.countryCode == locale?.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            home: const LanguageSelectorPage(),
          );
        },
      ),
    );
  }
}
