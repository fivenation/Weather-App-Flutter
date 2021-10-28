import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/generated/l10n.dart';

class CityPage extends StatelessWidget {
  final Function changeState;

  const CityPage(this.changeState ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).city_page),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // MOSCOW latitude=55.7558&longitude=37.6176
          GestureDetector(
            onTap: () {
              changeState("latitude=55.7558&longitude=37.6176");
              Navigator.pop(context);
            },
            child: Container(
              height: 100, width: 300,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), offset: Offset(2,4), blurRadius: 6)],
                image: const DecorationImage(image: AssetImage("assets/images/moscow.jpg"), fit: BoxFit.cover,)
              ),
              child: Padding( padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).city_moscow,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal, height: 1),
                    ),
                    Text(S.of(context).county_russia,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal, height: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // KYIV latitude=50.4422&longitude=30.5367
          GestureDetector(
            onTap: () {
              changeState("latitude=50.4422&longitude=30.5367");
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 100, width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), offset: Offset(2,4), blurRadius: 6)],
                  image: const DecorationImage(image: AssetImage("assets/images/kyiv.jpg"), fit: BoxFit.cover,)
              ),
              child: Padding( padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).city_kyiv,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal, height: 1),
                    ),
                    Text(S.of(context).country_ukraine,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal, height: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // BERLIN latitude=52.5235&longitude=13.4115
          GestureDetector(
            onTap: () {
              changeState("latitude=52.5235&longitude=13.4115");
              Navigator.pop(context);
            },
            child: Container(
              height: 100, width: 300,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), offset: Offset(2,4), blurRadius: 6)],
                  image: const DecorationImage(image: AssetImage("assets/images/berlin.jpg"), fit: BoxFit.cover,)
              ),
              child: Padding( padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).city_berlin,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal, height: 1),
                    ),
                    Text(S.of(context).country_germany,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal, height: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // PARIS latitude=48.8567&longitude=2.3510
          GestureDetector(
            onTap: () {
              changeState("latitude=48.8567&longitude=2.3510");
              Navigator.pop(context);
            },
            child: Container(
              height: 100, width: 300,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), offset: Offset(2,4), blurRadius: 6)],
                  image: const DecorationImage(image: AssetImage("assets/images/paris.jpg"), fit: BoxFit.cover,)
              ),
              child: Padding( padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).city_paris,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal, height: 1),
                    ),
                    Text(S.of(context).country_france,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal, height: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // LONDON latitude=51.5002&longitude=-0.1262
          GestureDetector(
            onTap: () {
              changeState("latitude=51.5002&longitude=-0.1262");
              Navigator.pop(context);
            },
            child: Container(
              height: 100, width: 300,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), offset: Offset(2,4), blurRadius: 6)],
                  image: const DecorationImage(image: AssetImage("assets/images/london.jpg"), fit: BoxFit.cover,)
              ),
              child: Padding( padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).city_london,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal, height: 1),
                    ),
                    Text(S.of(context).country_great_britain,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal, height: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}