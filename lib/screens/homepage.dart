// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:weather_app/custom_widgets/RequestAreaToClipper.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/models/WeeklyReport.dart';
import 'package:weather_app/screens/citypage.dart';
import 'package:weather_app/screens/hourlypage.dart';
import 'package:weather_app/screens/navdrawer.dart';
import 'package:weather_app/services/weather_controller.dart';
import 'package:weather_app/style/style.dart';
import 'package:weather_app/style/weatherCode.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  static _HomePageState? of(BuildContext context) => context.findAncestorStateOfType<_HomePageState>();
}

class _HomePageState extends StateMVC {
  late WeatherController _controller;

  _HomePageState() : super(WeatherController()) {
    _controller = controller as WeatherController;
  }

  String currCity = "latitude=55.7558&longitude=37.6176";
  
  changeCity(String params) {
    setState(() {
      _controller.init(params);
      currCity = params;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.init("latitude=55.7558&longitude=37.6176");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: true,
      drawer: NavDrawer(_localeToEn, _localeToRu),

      // Transparent App Bar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 32, ),
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      // BODY
      body: _buildContent()
    );
  }

  Widget _buildContent() {
    final state = _controller.currentState;
    if (state is WeeklyResultLoading) { // LOADING
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is WeeklyResultFailure) { // ERROR
      return Center(
          child: Text(state.error, textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),
      );
    } else {
      final weekly = (state as WeeklyResultSuccess).weeklyReport;
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: todayGrad(weekly.daily!.weathercode![0])
        ),

        // SafeArea of BODY
        child: SafeArea(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HourlyPage(weekly)
                    )
                  );
                },
                child: Container( // TOP PART OF PAGE
                  padding: EdgeInsets.all(32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // WEATHER ICON
                      Stack(
                        children: [
                          Opacity(child: Image.asset(weatherCodeToIconPath(weekly.daily!.weathercode![0]), color: Colors.black, height: 124, width: 124,), opacity: 0.5),
                          ClipRect(child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                            child: Image.asset(
                              weatherCodeToIconPath(weekly.daily!.weathercode![0]),
                              height: 124, width: 124,
                            ),
                          ),
                          ),
                        ],
                      ),
                      // TEMPERATURE AND WEATHER TYPE
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // WEATHER CODE
                          SizedBox(
                            width: 170,
                            child: Text(
                              weatherCodeToString(context, weekly.daily!.weathercode![0]),
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white, shadows: const <Shadow>[Shadow(color: textShadow, blurRadius: 2, offset: Offset(1, 1))],),
                            ),
                          ),
                          // TEMPERATURE
                          Text(
                            " " + tempConverter(weekly.daily!.temperature2mMax![0].toDouble()),
                            style: TextStyle(fontSize: 72, fontWeight: FontWeight.w600, color: Colors.white, shadows: const <Shadow>[Shadow(color: textShadow, blurRadius: 2, offset: Offset(1, 1))],),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Stack( // BOTTOM PART OF PAGE
                children: <Widget>[
                  ClipPath(
                    clipper: CustomClipperImage(),
                    child: Container(
                      width: double.infinity,
                      color:Colors.white,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container( // CITY
                              padding: EdgeInsetsDirectional.fromSTEB(36, 48, 8, 0),
                              child: Text(
                                getCityString(currCity),
                                textAlign: TextAlign.start,
                                style: TextStyle(color: textBlack, fontWeight: FontWeight.bold, fontSize: 32,),
                              ),
                            ),
                          ),
                          ListView.builder(
                              padding: EdgeInsets.all(12),
                              itemCount: 5,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Table(
                                  columnWidths: const {
                                    0: FlexColumnWidth(3),
                                    1: FlexColumnWidth(4),
                                    2: FlexColumnWidth(2),
                                  },
                                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(
                                      children: [
                                        Image.asset(
                                          weatherCodeToIconPath(weekly.daily!.weathercode![index + 1]),
                                          height: 36, width: 36,
                                        ),
                                        Text(
                                          weekdayConverter(context, weekly.daily!.time![index + 1]),
                                          style: TextStyle(color: textBlack,
                                            fontSize: 20, fontWeight: FontWeight.w400,),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              tempConverter(weekly.daily!.temperature2mMax![index + 1]),
                                              style: TextStyle(color: textBlack, fontSize: 22, fontWeight: FontWeight.bold,),
                                            ),
                                            Text(
                                              tempConverter(weekly.daily!.temperature2mMin![index + 1]),
                                              style: TextStyle(color: textGray, fontWeight: FontWeight.bold, fontSize: 16,),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              }
                          ),
                        ],
                      ),
                    ),
                  ),

                  // FLOATING BUTTON
                  Align(
                    alignment: Alignment(0.6, 0),
                    heightFactor: 0.5,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => CityPage(changeCity)
                            )
                        );
                      },
                      child: Icon(Icons.location_on, color: Colors.blue, size: 32,),
                      backgroundColor: Colors.white,
                      elevation: 6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }

  void _localeToEn() {setState(() {S.load(const Locale('en', 'US'));});}
  void _localeToRu() {setState(() {S.load(const Locale('ru', 'RU'));});}

  String getCityString(String params){
    switch (params) {
      case "latitude=55.7558&longitude=37.6176":
        return S.of(context).city_moscow;
      case "latitude=50.4422&longitude=30.5367":
        return S.of(context).city_kyiv;
      case "latitude=52.5235&longitude=13.4115":
        return S.of(context).city_berlin;
      case "latitude=48.8567&longitude=2.3510":
        return S.of(context).city_paris;
      case "latitude=51.5002&longitude=-0.1262":
        return S.of(context).city_london;
      default:
        return "Unknown City";
    }
  }
}