import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key key,
    @required this.screenSize,
    @required this.iconPath,
    @required this.infoTitle,
    @required this.detailInfo,
  }) : super(key: key);

  final Size screenSize;
  final String iconPath;
  final String infoTitle;
  final String detailInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.55,
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          SvgPicture.asset(iconPath),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              '$infoTitle |',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            detailInfo,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
