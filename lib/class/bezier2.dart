import 'package:flutter/cupertino.dart';

class BezierClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.1;
    Path path = Path();

    path.lineTo(0, height - heightOffset*4);

    path.quadraticBezierTo(
      width * 0.28,
      height - heightOffset*2,
      width * 0.5,
      height - heightOffset*4,
    );

    path.quadraticBezierTo(
      width * 0.75,
      height - heightOffset * 6,
      width,
      height - heightOffset ,
    );

    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
