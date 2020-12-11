import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zen_weather/constant/colors.dart';
import 'local_widgets/weather_card.dart';
import 'package:zen_weather/widgets/background_image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkColor,
      body: Stack(
        children: [
          BackgroundImage(assetPath: 'assets/images/background.svg'),
          Positioned(
            right: -20,
            top: screenSize.height * 0.15,
            child: Container(
              width: screenSize.width,
              child: SvgPicture.asset('assets/images/bird.svg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenSize.height * 0.5),
            width: screenSize.width,
            height: screenSize.height * 0.78,
            child: Column(
              children: [
                Text(
                  'Bogor, Indonesia',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                WeatherCard(screenSize: screenSize),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
