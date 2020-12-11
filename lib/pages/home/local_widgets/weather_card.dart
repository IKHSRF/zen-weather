import 'package:flutter/material.dart';
import 'package:zen_weather/pages/detail/detail_page.dart';
import 'card_info.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
        padding: EdgeInsets.all(20.0),
        width: screenSize.width,
        height: screenSize.height * 0.35,
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(18.54),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          children: [
            Text(
              'Today, 8 December',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              '23\u2103',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloudy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            CardInfo(
              screenSize: screenSize,
              iconPath: 'assets/icons/windy.svg',
              infoTitle: 'Wind',
              detailInfo: '10 Km/h',
            ),
            CardInfo(
              screenSize: screenSize,
              iconPath: 'assets/icons/hum.svg',
              infoTitle: 'Hum',
              detailInfo: ' 54 %',
            ),
          ],
        ),
      ),
    );
  }
}
