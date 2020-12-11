import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundImage extends StatelessWidget {
  ///*This is for the background image of the screen*
  ///
  ///
  ///[assetPath] is path for the **images**
  ///
  ///Example :
  ///```
  ///BackgroundImage(assetPath: 'assets/images/detail background.svg')
  /// ```
  const BackgroundImage({
    Key key,
    @required this.assetPath,
  }) : super(key: key);

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      fit: BoxFit.fill,
    );
  }
}
