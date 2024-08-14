import 'package:flutter/cupertino.dart';

class BezierClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightoffset = height * 0.2;
    Path path = Path();

    path.lineTo(
      0,//x val
      height - heightoffset*2,//y val
    );

    path.quadraticBezierTo(
      width * 0.25,//x1 of p1
      height - heightoffset,//y1 of p1
      width * 0.6,//x2 of p2
      height - heightoffset*3,//y2 of p2
    );

    path.quadraticBezierTo(
      width * 0.78,//p1(x1)
      height - (heightoffset*4),//p1(y1)
      width ,//p2(x2)
      height - heightoffset,////p2(y2)
    );

    path.lineTo(width,0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
