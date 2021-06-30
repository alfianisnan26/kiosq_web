import 'package:flutter/material.dart';

class MainIcon extends CustomPainter {
  @override

  static Color forLight = Color(0xff387ef5);
  static Color forDark = Colors.white;
  static Color colorTheme = forDark;

  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1


    paint.color = Color(0xff809eff);
    path = Path();
    path.lineTo(size.width * 2.37, size.height * 1.18);
    path.cubicTo(size.width * 2.37, size.height * 1.18, size.width * 2.37, size.height * 1.5, size.width * 2.37, size.height * 1.5);
    path.cubicTo(size.width * 2.37, size.height * 1.5, size.width * 2.19, size.height * 1.44, size.width * 2.19, size.height * 1.44);
    path.cubicTo(size.width * 2.19, size.height * 1.44, size.width * 2.19, size.height * 1.13, size.width * 2.19, size.height * 1.13);
    path.cubicTo(size.width * 2.19, size.height * 1.13, size.width * 2.37, size.height * 1.18, size.width * 2.37, size.height * 1.18);
    canvas.drawPath(path, paint);


    // Path number 2


    paint.color = Color(0xff809eff);
    path = Path();
    path.lineTo(size.width * 0.95, size.height * 1.96);
    path.cubicTo(size.width * 0.95, size.height * 1.96, size.width * 0.95, size.height * 2.07, size.width * 0.95, size.height * 2.07);
    path.cubicTo(size.width * 0.95, size.height * 2.07, size.width * 0.66, size.height * 2.15, size.width * 0.66, size.height * 2.15);
    path.cubicTo(size.width * 0.66, size.height * 2.15, size.width * 0.83, size.height * 2.2, size.width * 0.83, size.height * 2.2);
    path.cubicTo(size.width * 0.83, size.height * 2.2, size.width * 1.13, size.height * 2.12, size.width * 1.13, size.height * 2.12);
    path.cubicTo(size.width * 1.13, size.height * 2.12, size.width * 1.13, size.height * 2.02, size.width * 1.13, size.height * 2.02);
    path.cubicTo(size.width * 1.13, size.height * 2.02, size.width * 0.95, size.height * 1.96, size.width * 0.95, size.height * 1.96);
    canvas.drawPath(path, paint);


    // Path number 3


    paint.color = Color(0xffffd300);
    path = Path();
    path.lineTo(size.width * 1.48, size.height * 1.13);
    path.cubicTo(size.width * 1.48, size.height * 1.13, size.width * 0.66, size.height * 1.31, size.width * 0.66, size.height * 1.31);
    path.cubicTo(size.width * 0.66, size.height * 1.31, size.width * 0.66, size.height * 1.76, size.width * 0.66, size.height * 1.76);
    path.cubicTo(size.width * 0.66, size.height * 1.76, size.width * 0.95, size.height * 1.68, size.width * 0.95, size.height * 1.68);
    path.cubicTo(size.width * 0.95, size.height * 1.68, size.width * 0.95, size.height * 1.58, size.width * 0.95, size.height * 1.58);
    path.cubicTo(size.width * 0.95, size.height * 1.58, size.width * 1.48, size.height * 1.44, size.width * 1.48, size.height * 1.44);
    path.cubicTo(size.width * 1.48, size.height * 1.44, size.width * 1.48, size.height * 1.13, size.width * 1.48, size.height * 1.13);
    canvas.drawPath(path, paint);


    // Path number 4


    paint.color = colorTheme;
    path = Path();
    path.lineTo(size.width * 0.66, size.height * 1.31);
    path.cubicTo(size.width * 0.66, size.height * 1.31, size.width * 1.48, size.height * 1.13, size.width * 1.48, size.height * 1.13);
    path.cubicTo(size.width * 1.48, size.height * 1.13, size.width * 1.66, size.height * 1.18, size.width * 1.66, size.height * 1.18);
    path.cubicTo(size.width * 1.66, size.height * 1.18, size.width * 0.83, size.height * 1.37, size.width * 0.83, size.height * 1.37);
    path.cubicTo(size.width * 0.83, size.height * 1.37, size.width * 0.83, size.height * 1.81, size.width * 0.83, size.height * 1.81);
    path.cubicTo(size.width * 0.83, size.height * 1.81, size.width * 1.13, size.height * 1.73, size.width * 1.13, size.height * 1.73);
    path.cubicTo(size.width * 1.13, size.height * 1.73, size.width * 1.13, size.height * 1.63, size.width * 1.13, size.height * 1.63);
    path.cubicTo(size.width * 1.13, size.height * 1.63, size.width * 0.95, size.height * 1.58, size.width * 0.95, size.height * 1.58);
    path.cubicTo(size.width * 0.95, size.height * 1.58, size.width * 1.48, size.height * 1.44, size.width * 1.48, size.height * 1.44);
    path.cubicTo(size.width * 1.48, size.height * 1.44, size.width * 1.66, size.height * 1.5, size.width * 1.66, size.height * 1.5);
    path.cubicTo(size.width * 1.66, size.height * 1.5, size.width * 1.66, size.height * 1.94, size.width * 1.66, size.height * 1.94);
    path.cubicTo(size.width * 1.66, size.height * 1.94, size.width * 0.83, size.height * 2.13, size.width * 0.83, size.height * 2.13);
    path.cubicTo(size.width * 0.83, size.height * 2.13, size.width * 0.66, size.height * 2.08, size.width * 0.66, size.height * 2.08);
    path.cubicTo(size.width * 0.66, size.height * 2.08, size.width * 0.66, size.height * 1.31, size.width * 0.66, size.height * 1.31);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
