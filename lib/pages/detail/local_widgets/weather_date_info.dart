import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherDateInfo extends StatelessWidget {
  const WeatherDateInfo({
    Key key,
    @required this.temperature,
    @required this.assetPath,
    @required this.hours,
    this.isActive = false,
  }) : super(key: key);

  final String temperature;
  final String assetPath;
  final String hours;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      width: 80,
      height: 150,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white30,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(18.54),
            )
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$temperature\u2103',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: SvgPicture.asset(
              assetPath,
            ),
            height: 35.0,
            width: 35.0,
          ),
          Text(
            hours,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
