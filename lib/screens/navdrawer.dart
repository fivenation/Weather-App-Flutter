import 'package:flutter/material.dart';
import 'package:weather_app/generated/l10n.dart';

class NavDrawer extends StatefulWidget {
  final Function localeToEn;
  final Function localeToRu;

  const NavDrawer(this.localeToEn, this.localeToRu, {Key? key}) : super(key: key);

  // ignore: prefer_final_fields
  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

enum signedLocale { en, ru }

class _NavDrawerState extends State<NavDrawer> {
  signedLocale? _sLocale = signedLocale.en;

  @override
  Widget build(BuildContext context) {
    if (S.of(context).current_locale == "ru") {
      _sLocale = signedLocale.ru;
    } else {
      _sLocale = signedLocale.en;
    }

    return Drawer(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
        children: <Widget>[
          Text(
            S.of(context).menu_language_title,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
            ),
          ), // Language Title
          ListTile(
            title: Text(S.of(context).menu_language_en),
            leading: Radio<signedLocale>(
              value: signedLocale.en,
              groupValue: _sLocale,
              onChanged: (signedLocale? value) {
                setState(() {
                  widget.localeToEn();
                  _sLocale = value;
                  Navigator.pop(context);
                });
              },
            ),
          ), // English language
          ListTile(
            title: Text(S.of(context).menu_language_ru),
            leading: Radio<signedLocale>(
              value: signedLocale.ru,
              groupValue: _sLocale,
              onChanged: (signedLocale? value) {
                setState(() {
                  //S.load(const Locale('ru', 'RU'));
                  widget.localeToRu();
                  _sLocale = value;
                  Navigator.pop(context);
                });
              },
            ),
          ), // Russian language
        ],
      ),
    );
  }
}