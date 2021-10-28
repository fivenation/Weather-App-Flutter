import 'dart:async';

import 'package:mvc_pattern/mvc_pattern.dart';

import 'weather_api_provider.dart';
import 'package:weather_app/models/WeeklyReport.dart';

class WeatherController extends ControllerMVC {
  final WeatherProvider provider = WeatherProvider();
  WeeklyResult currentState = WeeklyResultLoading();

  void init(params) async {
    try {
      final weekly = await provider.getWeekly(params);
      setState(() => currentState = WeeklyResultSuccess(weekly));
    } catch (error) {
      setState(() => currentState = WeeklyResultFailure("Connection error! $error"));
    }
  }

}