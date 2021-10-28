// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Weather App`
  String get app_name {
    return Intl.message(
      'Weather App',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Hello, World!`
  String get hello_world {
    return Intl.message(
      'Hello, World!',
      name: 'hello_world',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get menu_language_title {
    return Intl.message(
      'Language',
      name: 'menu_language_title',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get menu_language_en {
    return Intl.message(
      'English',
      name: 'menu_language_en',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get menu_language_ru {
    return Intl.message(
      'Russian',
      name: 'menu_language_ru',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get request_daily {
    return Intl.message(
      'Daily',
      name: 'request_daily',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get request_weekly {
    return Intl.message(
      'Weekly',
      name: 'request_weekly',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get days_monday {
    return Intl.message(
      'Monday',
      name: 'days_monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get days_tuesday {
    return Intl.message(
      'Tuesday',
      name: 'days_tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get days_wednesday {
    return Intl.message(
      'Wednesday',
      name: 'days_wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get days_thursday {
    return Intl.message(
      'Thursday',
      name: 'days_thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get days_friday {
    return Intl.message(
      'Friday',
      name: 'days_friday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get days_saturday {
    return Intl.message(
      'Saturday',
      name: 'days_saturday',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get days_sunday {
    return Intl.message(
      'Sunday',
      name: 'days_sunday',
      desc: '',
      args: [],
    );
  }

  /// `Sunny`
  String get sunny {
    return Intl.message(
      'Sunny',
      name: 'sunny',
      desc: '',
      args: [],
    );
  }

  /// `Mainly Clear`
  String get mainly_clear {
    return Intl.message(
      'Mainly Clear',
      name: 'mainly_clear',
      desc: '',
      args: [],
    );
  }

  /// `Party Cloudy`
  String get party_cloudy {
    return Intl.message(
      'Party Cloudy',
      name: 'party_cloudy',
      desc: '',
      args: [],
    );
  }

  /// `Overcast`
  String get overcast {
    return Intl.message(
      'Overcast',
      name: 'overcast',
      desc: '',
      args: [],
    );
  }

  /// `Light Drizzle`
  String get light_drizzle {
    return Intl.message(
      'Light Drizzle',
      name: 'light_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Moderate Drizzle`
  String get moderate_drizzle {
    return Intl.message(
      'Moderate Drizzle',
      name: 'moderate_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Dense Drizzle`
  String get dense_drizzle {
    return Intl.message(
      'Dense Drizzle',
      name: 'dense_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Light Freezing Drizzle`
  String get light_freezing_drizzle {
    return Intl.message(
      'Light Freezing Drizzle',
      name: 'light_freezing_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Dense Freezing Drizzle`
  String get dense_freezing_drizzle {
    return Intl.message(
      'Dense Freezing Drizzle',
      name: 'dense_freezing_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Slight Rain`
  String get slight_rain {
    return Intl.message(
      'Slight Rain',
      name: 'slight_rain',
      desc: '',
      args: [],
    );
  }

  /// `Moderate Rain`
  String get moderate_rain {
    return Intl.message(
      'Moderate Rain',
      name: 'moderate_rain',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Rain`
  String get heavy_rain {
    return Intl.message(
      'Heavy Rain',
      name: 'heavy_rain',
      desc: '',
      args: [],
    );
  }

  /// `Slight Snow Fall`
  String get slight_snow_fall {
    return Intl.message(
      'Slight Snow Fall',
      name: 'slight_snow_fall',
      desc: '',
      args: [],
    );
  }

  /// `Light Freezing Rain`
  String get light_freezing_rain {
    return Intl.message(
      'Light Freezing Rain',
      name: 'light_freezing_rain',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Freezing Rain`
  String get heavy_freezing_rain {
    return Intl.message(
      'Heavy Freezing Rain',
      name: 'heavy_freezing_rain',
      desc: '',
      args: [],
    );
  }

  /// `Slight Thunderstorm`
  String get slight_thunderstorm {
    return Intl.message(
      'Slight Thunderstorm',
      name: 'slight_thunderstorm',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Thunderstorm`
  String get heavy_thunderstorm {
    return Intl.message(
      'Heavy Thunderstorm',
      name: 'heavy_thunderstorm',
      desc: '',
      args: [],
    );
  }

  /// `Thunderstorm`
  String get thunderstorm {
    return Intl.message(
      'Thunderstorm',
      name: 'thunderstorm',
      desc: '',
      args: [],
    );
  }

  /// `Slight Snow Shower`
  String get slight_snow_shower {
    return Intl.message(
      'Slight Snow Shower',
      name: 'slight_snow_shower',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Snow Shower`
  String get heavy_snow_shower {
    return Intl.message(
      'Heavy Snow Shower',
      name: 'heavy_snow_shower',
      desc: '',
      args: [],
    );
  }

  /// `Slight Rain Shower`
  String get slight_rain_shower {
    return Intl.message(
      'Slight Rain Shower',
      name: 'slight_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Moderate Rain Shower`
  String get moderate_rain_shower {
    return Intl.message(
      'Moderate Rain Shower',
      name: 'moderate_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Violent Rain Shower`
  String get violent_rain_shower {
    return Intl.message(
      'Violent Rain Shower',
      name: 'violent_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Snow Grains`
  String get snow_grains {
    return Intl.message(
      'Snow Grains',
      name: 'snow_grains',
      desc: '',
      args: [],
    );
  }

  /// `Cloudy`
  String get cloudy {
    return Intl.message(
      'Cloudy',
      name: 'cloudy',
      desc: '',
      args: [],
    );
  }

  /// `Moscow`
  String get city_moscow {
    return Intl.message(
      'Moscow',
      name: 'city_moscow',
      desc: '',
      args: [],
    );
  }

  /// `Kyiv`
  String get city_kyiv {
    return Intl.message(
      'Kyiv',
      name: 'city_kyiv',
      desc: '',
      args: [],
    );
  }

  /// `Paris`
  String get city_paris {
    return Intl.message(
      'Paris',
      name: 'city_paris',
      desc: '',
      args: [],
    );
  }

  /// `London`
  String get city_london {
    return Intl.message(
      'London',
      name: 'city_london',
      desc: '',
      args: [],
    );
  }

  /// `Berlin`
  String get city_berlin {
    return Intl.message(
      'Berlin',
      name: 'city_berlin',
      desc: '',
      args: [],
    );
  }

  /// `Russian Federation`
  String get county_russia {
    return Intl.message(
      'Russian Federation',
      name: 'county_russia',
      desc: '',
      args: [],
    );
  }

  /// `Ukraine`
  String get country_ukraine {
    return Intl.message(
      'Ukraine',
      name: 'country_ukraine',
      desc: '',
      args: [],
    );
  }

  /// `France`
  String get country_france {
    return Intl.message(
      'France',
      name: 'country_france',
      desc: '',
      args: [],
    );
  }

  /// `Great Britain`
  String get country_great_britain {
    return Intl.message(
      'Great Britain',
      name: 'country_great_britain',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get country_germany {
    return Intl.message(
      'Germany',
      name: 'country_germany',
      desc: '',
      args: [],
    );
  }

  /// `Hourly Forecast`
  String get hourly_report {
    return Intl.message(
      'Hourly Forecast',
      name: 'hourly_report',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get current_locale {
    return Intl.message(
      'en',
      name: 'current_locale',
      desc: '',
      args: [],
    );
  }

  /// `Change Location`
  String get city_page {
    return Intl.message(
      'Change Location',
      name: 'city_page',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
