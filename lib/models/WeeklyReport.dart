// ignore_for_file: file_names

class WeeklyReport {
  Hourly? hourly;
  DailyUnits? dailyUnits;
  double? generationtimeMs;
  double? elevation;
  Daily? daily;
  HourlyUnits? hourlyUnits;
  double? longitude;
  double? latitude;
  int? utcOffsetSeconds;

  WeeklyReport(
      {this.hourly,
        this.dailyUnits,
        this.generationtimeMs,
        this.elevation,
        this.daily,
        this.hourlyUnits,
        this.longitude,
        this.latitude,
        this.utcOffsetSeconds});

  WeeklyReport.fromJson(Map<String, dynamic> json) {
    hourly =
    json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
    dailyUnits = json['daily_units'] != null
        ? DailyUnits.fromJson(json['daily_units'])
        : null;
    generationtimeMs = json['generationtime_ms'];
    elevation = json['elevation'];
    daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
    hourlyUnits = json['hourly_units'] != null
        ? HourlyUnits.fromJson(json['hourly_units'])
        : null;
    longitude = json['longitude'];
    latitude = json['latitude'];
    utcOffsetSeconds = json['utc_offset_seconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (hourly != null) {
      data['hourly'] = hourly!.toJson();
    }
    if (dailyUnits != null) {
      data['daily_units'] = dailyUnits!.toJson();
    }
    data['generationtime_ms'] = generationtimeMs;
    data['elevation'] = elevation;
    if (daily != null) {
      data['daily'] = daily!.toJson();
    }
    if (hourlyUnits != null) {
      data['hourly_units'] = hourlyUnits!.toJson();
    }
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['utc_offset_seconds'] = utcOffsetSeconds;
    return data;
  }
}

class Hourly {
  List<int>? weathercode;
  List<num>? temperature2m;
  List<String>? time;

  Hourly({this.weathercode, this.temperature2m, this.time});

  Hourly.fromJson(Map<String, dynamic> json) {
    weathercode = json['weathercode'].cast<int>();
    temperature2m = json['temperature_2m'].cast<num>();
    time = json['time'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weathercode'] = weathercode;
    data['temperature_2m'] = temperature2m;
    data['time'] = time;
    return data;
  }
}

class DailyUnits {
  String? time;
  String? temperature2mMax;
  String? weathercode;
  String? temperature2mMin;

  DailyUnits(
      {this.time,
        this.temperature2mMax,
        this.weathercode,
        this.temperature2mMin});

  DailyUnits.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    temperature2mMax = json['temperature_2m_max'];
    weathercode = json['weathercode'];
    temperature2mMin = json['temperature_2m_min'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['temperature_2m_max'] = temperature2mMax;
    data['weathercode'] = weathercode;
    data['temperature_2m_min'] = temperature2mMin;
    return data;
  }
}

class Daily {
  List<num>? temperature2mMax;
  List<String>? time;
  List<num>? temperature2mMin;
  List<int>? weathercode;

  Daily(
      {this.temperature2mMax,
        this.time,
        this.temperature2mMin,
        this.weathercode});

  Daily.fromJson(Map<String, dynamic> json) {
    temperature2mMax = json['temperature_2m_max'].cast<num>();
    time = json['time'].cast<String>();
    temperature2mMin = json['temperature_2m_min'].cast<num>();
    weathercode = json['weathercode'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature_2m_max'] = temperature2mMax;
    data['time'] = time;
    data['temperature_2m_min'] = temperature2mMin;
    data['weathercode'] = weathercode;
    return data;
  }
}

class HourlyUnits {
  String? weathercode;
  String? time;
  String? temperature2m;

  HourlyUnits({this.weathercode, this.time, this.temperature2m});

  HourlyUnits.fromJson(Map<String, dynamic> json) {
    weathercode = json['weathercode'];
    time = json['time'];
    temperature2m = json['temperature_2m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weathercode'] = weathercode;
    data['time'] = time;
    data['temperature_2m'] = temperature2m;
    return data;
  }
}

abstract class WeeklyResult { }

class WeeklyResultSuccess extends WeeklyResult {
  final WeeklyReport weeklyReport;
  WeeklyResultSuccess(this.weeklyReport);
}

class WeeklyResultFailure extends WeeklyResult {
  final String error;
  WeeklyResultFailure(this.error);
}

class WeeklyResultLoading extends WeeklyResult {
  WeeklyResultLoading();
}

