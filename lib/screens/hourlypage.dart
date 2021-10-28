import 'package:flutter/material.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/models/WeeklyReport.dart';
import 'package:weather_app/style/style.dart';
import 'package:weather_app/style/weatherCode.dart';


class HourlyPage extends StatelessWidget {
  final WeeklyReport weekly;

  // ignore: use_key_in_widget_constructors
  const HourlyPage(this.weekly);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(S.of(context).hourly_report), // TEST
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 24,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Table(
                border: const TableBorder(
                    horizontalInside: BorderSide(
                      width: 1,
                      color: Colors.grey,
                      style: BorderStyle.solid
                    ),
                ),
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      Image.asset(
                        weatherCodeToIconPath(weekly.hourly!.weathercode![index]),
                        height: 36, width: 36,
                      ),
                      Text(
                        timeConverter(context, weekly.hourly!.time![index]),
                        style: const TextStyle(color: textBlack, fontSize: 20, fontWeight: FontWeight.w400,),
                      ),
                      Text(
                        tempConverter(weekly.hourly!.temperature2m![index]),
                        textAlign: TextAlign.right,
                        style: const TextStyle(color: textBlack, fontSize: 22, fontWeight: FontWeight.bold,),
                      ),
                      const Text(' '),
                    ],
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

}