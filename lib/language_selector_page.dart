import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localizations.dart';
import 'package:flutter_localization/home_page.dart';
import 'package:flutter_localization/locale_provider.dart';
import 'package:provider/provider.dart';

class LanguageSelectorPage extends StatelessWidget {
  const LanguageSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('title', context)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<LocaleProvider>(context, listen: false)
                    .changeLocale(const Locale('en', 'US'));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Text(localizations.translate('english', context)),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LocaleProvider>(context, listen: false)
                    .changeLocale(const Locale('hi', 'IN'));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Text(localizations.translate('hindi', context)),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LocaleProvider>(context, listen: false)
                    .changeLocale(const Locale('gu', 'IN'));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Text(localizations.translate('gujarati', context)),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LocaleProvider>(context, listen: false)
                    .changeLocale(const Locale('ar'));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Text(localizations.translate('arabic', context)),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LocaleProvider>(context, listen: false)
                    .changeLocale(const Locale('he', 'IL'));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Text(localizations.translate('israeli hebrew', context)),
            ),
          ],
        ),
      ),
    );
  }
}
