import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('title', context)),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              localizations.translate('hello_world', context),
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              textAlign: TextAlign.center,
              localizations.translate('My name is vaibhav', context),
              style: const TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  backgroundColor: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
