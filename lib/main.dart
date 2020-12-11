import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
