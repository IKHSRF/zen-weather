import 'package:flutter/material.dart';

class BackandSetting extends StatelessWidget {
  const BackandSetting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
