import 'package:weather_app/models/WeeklyReport.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class WeatherProvider {
  //https://api.open-meteo.com/v1/forecast?latitude=55.7558&longitude=37.6176&hourly=temperature_2m,weathercode&daily=weathercode,temperature_2m_max,temperature_2m_min&timezone=Europe%2FMoscow

  Future<WeeklyReport> getWeekly(String params) async {
    final Uri url = Uri.parse("https://api.open-meteo.com/v1/forecast?$params&hourly=temperature_2m,weathercode&daily=weathercode,temperature_2m_max,temperature_2m_min&timezone=Europe%2FMoscow");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(WeeklyReport.fromJson(json.decode(response.body)));
      return WeeklyReport.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error: Response invalid!");
    }
  }
}

