// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:core';

import 'package:weather_app/generated/l10n.dart';
import 'package:intl/intl.dart';

const LinearGradient grClear = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [ 0.15, 0.6],
    colors: [
      Color.fromRGBO(71, 172, 246, 1.0),
      Color.fromRGBO(239, 220, 119, 1.0),
    ]
);

const LinearGradient grCloudy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [ 0.1, 0.6],
    colors: [
      Color.fromRGBO(156, 159, 165, 1.0),
      Color.fromRGBO(71, 77, 125, 1.0),
    ]
);

const LinearGradient grStorm = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [ 0.1, 0.6],
    colors: [
      Color.fromRGBO(36, 64, 80, 1.0),
      Color.fromRGBO(1, 1, 43, 1.0),
    ]
);

// UTILS FOR PERFORMING DATA FOR VISUALISATION

LinearGradient todayGrad(int weatherCode) {
  switch (weatherCode) {
    case 0:case 1:case 2:case 3:case 51:case 53:case 55:
      return grClear;
    case 45:case 48:case 56:case 57:case 61:case 63:case 65:case 71:case 66 :case 67:
      return grCloudy;
    case 96:case 99:case 95:case 85:case 86:case 80:case 81:case 82:case 77:
      return grStorm;
    default: return grClear;
  }
}

String weatherCodeToIconPath(int weatherCode) {
  switch (weatherCode) {
    case 45:case 48:
      return "assets/icons_weather/foog.png";
    case 1:case 2:
      return "assets/icons_weather/cloudy.png";
    case 3:case 51:
      return "assets/icons_weather/cloudy_1.png";
    case 53:case 65:case 66:
      return "assets/icons_weather/rainy.png";
    case 67:case 80:case 81:case 82:
      return "assets/icons_weather/rainy_1.png";
    case 71:case 73:
      return "assets/icons_weather/snowy.png";
    case 95:case 96:case 99:
      return "assets/icons_weather/storm.png";
    case 0:
      return "assets/icons_weather/sunny.png";
    case 61:case 63:
      return "assets/icons_weather/rainy_2.png";
    case 56:case 77:case 75:case 85:case 86:
      return "assets/icons_weather/snowy_1.png";
    case 55:case 57:
      return "assets/icons_weather/hail.png";
    default: return "assets/icons_weather/sunny.png";
  }
}



String tempConverter(num temperature) {
  return temperature.round().toString() + "°";
}

String weekdayConverter(BuildContext context, String inputDate) {
  var date = DateTime.parse(inputDate);
  switch (date.weekday) {
    case 1: return S.of(context).days_monday;
    case 2: return S.of(context).days_tuesday;
    case 3: return S.of(context).days_wednesday;
    case 4: return S.of(context).days_thursday;
    case 5: return S.of(context).days_friday;
    case 6: return S.of(context).days_saturday;
    default: return S.of(context).days_sunday;
  }
}

String timeConverter(BuildContext context, String inputDate) {
  var date = DateTime.parse(inputDate);
  return DateFormat('HH:mm').format(date);
}

String weatherCodeToString(BuildContext context, int weatherCode) {
  switch (weatherCode){
    case 0:
      return S.of(context).sunny;
    case 1:
      return S.of(context).mainly_clear;
    case 2:
      return S.of(context).party_cloudy;
    case 3:
      return S.of(context).overcast;
    case 51:
      return S.of(context).light_drizzle;
    case 53:
      return S.of(context).moderate_drizzle;
    case 55:
      return S.of(context).dense_drizzle;
    case 56:
      return S.of(context).light_freezing_drizzle;
    case 57:
      return S.of(context).dense_freezing_drizzle;
    case 61:
      return S.of(context).slight_rain;
    case 63:
      return S.of(context).moderate_rain;
    case 65:
      return S.of(context).heavy_rain;
    case 71:
      return S.of(context).slight_snow_fall;
    case 66:
      return S.of(context).light_freezing_rain;
    case 67:
      return S.of(context).heavy_freezing_rain;
    case 96:
      return S.of(context).slight_thunderstorm;
    case 99:
      return S.of(context).heavy_thunderstorm;
    case 95:
      return S.of(context).thunderstorm;
    case 85:
      return S.of(context).slight_snow_shower;
    case 86:
      return S.of(context).heavy_snow_shower;
    case 80:
      return S.of(context).slight_rain_shower;
    case 81:
      return S.of(context).moderate_rain_shower;
    case 82:
      return S.of(context).violent_rain_shower;
    case 77:
      return S.of(context).snow_grains;
    default:
      return S.of(context).cloudy;
  }
}