import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zen_weather/constant/colors.dart';
import 'package:zen_weather/widgets/card_info.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/background.svg',
            fit: BoxFit.fill,
          ),
          Positioned(
            right: -20,
            top: screenSize.height * 0.17,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 0.78,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width,
                    child: SvgPicture.asset('assets/images/bird.svg'),
                  ),
                  Text(
                    'Bogor, Indonesia',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 50.0, left: 30.0),
                      padding: EdgeInsets.only(top: 20.0),
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
                            '29\u2103',
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
                            detailInfo: '54 %',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
