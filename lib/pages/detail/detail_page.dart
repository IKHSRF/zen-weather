import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zen_weather/widgets/background_image.dart';
import 'local_widgets/back_setting_icon.dart';
import 'local_widgets/next_forecast.dart';
import 'local_widgets/weather_date_info.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(assetPath: 'assets/images/detail background.svg'),
          SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackandSetting(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Dec, 8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        WeatherDateInfo(
                          temperature: '21',
                          assetPath: 'assets/icons/rain.svg',
                          hours: '19.00',
                        ),
                        WeatherDateInfo(
                          temperature: '23',
                          assetPath: 'assets/icons/cloudy.svg',
                          hours: '20.00',
                          isActive: true,
                        ),
                        WeatherDateInfo(
                          temperature: '23',
                          assetPath: 'assets/icons/cloudy moon.svg',
                          hours: '21.00',
                        ),
                        WeatherDateInfo(
                          temperature: '23',
                          assetPath: 'assets/icons/cloudy moon.svg',
                          hours: '22.00',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NEXT Forecast',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      children: [
                        NextForecast(
                          date: 'Dec, 9',
                          assetPath: 'assets/icons/cloudy sun.svg',
                          temperature: '25',
                        ),
                        NextForecast(
                          date: 'Dec, 10',
                          assetPath: 'assets/icons/storm.svg',
                          temperature: '21',
                        ),
                        NextForecast(
                          date: 'Dec, 11',
                          assetPath: 'assets/icons/rain.svg',
                          temperature: '23',
                        ),
                        NextForecast(
                          date: 'Dec, 12',
                          assetPath: 'assets/icons/cloudy sun.svg',
                          temperature: '25',
                        ),
                      ],
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
