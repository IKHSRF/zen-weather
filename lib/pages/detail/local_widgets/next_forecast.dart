import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NextForecast extends StatelessWidget {
  const NextForecast({
    Key key,
    @required this.date,
    @required this.assetPath,
    @required this.temperature,
  }) : super(key: key);

  final String date;
  final String assetPath;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: SvgPicture.asset(
              assetPath,
            ),
            height: 50.0,
            width: 50.0,
          ),
          Text(
            '$temperature\u2103',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
