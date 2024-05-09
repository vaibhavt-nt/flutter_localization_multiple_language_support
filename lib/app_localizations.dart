// Class for custom localization
import 'package:flutter/material.dart';

class AppLocalizations {
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  final Map<String, Map<String, String>> _localizedStrings = {
    'en': {
      'title': 'Language Selector',
      'english': 'English',
      'hindi': 'Hindi',
      'arabic': 'Arabic',
      'gujarati': 'Gujarati',
      'israeli hebrew':'Israeli Hebrew',
      'hello_world': 'Hello, World!',
      'My name is vaibhav': 'My name is vaibhav'
    },
    'hi': {
      'title': 'भाषा का चयनकर्ता',
      'english': 'English',
      'hindi': 'Hindi',
      'arabic': 'Arabic',
      'gujarati': 'Gujarati',
      'israeli hebrew':'Israeli Hebrew',
      'hello_world': 'नमस्ते, दुनिया!',
      'My name is vaibhav': 'मेरा नाम वैभव है'
    },
    'gu': {
      'title': 'ભાષા પસંદગીકાર',
      'english': 'English',
      'hindi': 'Hindi',
      'arabic': 'Arabic',
      'gujarati': 'Gujarati',
      'hello_world': 'હેલો, વિશ્વ!',
      'israeli hebrew':'Israeli Hebrew',
      'My name is vaibhav': 'મારું નામ વૈભવ છે'
    },
    'ar': {
      'title': 'محدد اللغة',
      'english': 'English',
      'hindi': 'Hindi',
      'arabic': 'Arabic',
      'gujarati': 'Gujarati',
      'israeli hebrew':'Israeli Hebrew',
      'hello_world': 'مرحبا بالعالم!',
      'My name is vaibhav': "اسمي فايبهاف"
    },
    'he': {
      'title': 'בורר שפה',
      'english': 'English',
      'hindi': 'Hindi',
      'arabic': 'Arabic',
      'gujarati': 'Gujarati',
      'israeli hebrew':'Israeli Hebrew',
      'hello_world': 'שלום עולם!',
      'My name is vaibhav': "שמי הוא ואיבהב"
    },
  };

  String translate(String key, BuildContext context) {
    var locale = Localizations.localeOf(context);
    return _localizedStrings[locale.languageCode]![key]!;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'hi', 'gu', 'ar', 'he'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations();
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
