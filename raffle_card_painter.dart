import 'dart:math';

import 'package:flutter/material.dart';

class RaffleCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radConst = pi / 180;

    var rectLeft = Rect.fromLTRB(
        -(size.width * 0.025),
        (size.height - (size.height * 0.125)),
        size.width * 0.025,
        (size.height - (size.height * 0.075)));

    var rectRight = Rect.fromLTRB(
        size.width - (size.width * 0.025),
        (size.height - (size.height * 0.125)),
        size.width + (size.width * 0.025),
        (size.height - (size.height * 0.075)));

    var path = Path();

    var radiusPosition = size.height * 0.02;

    path.moveTo(radiusPosition, 0);
    path.arcToPoint(Offset(0, radiusPosition), radius: Radius.circular(10), clockwise: false);
    path.lineTo(0, (size.height - (size.height * 0.125)));
    path.arcTo(rectLeft, 270 * radConst, 180 * radConst, false);
    path.lineTo(0, size.height - radiusPosition);
    path.arcToPoint(Offset(radiusPosition, size.height), radius: Radius.circular(10), clockwise: false);
    path.lineTo(size.width - radiusPosition, size.height);
    path.arcToPoint(Offset(size.width, size.height - radiusPosition), radius: Radius.circular(10), clockwise: false);
    path.lineTo(size.width, (size.height - (size.height * 0.125)));
    path.arcTo(rectRight, 90 * radConst, 180 * radConst, false);
    path.lineTo(size.width, radiusPosition);
    path.arcToPoint(Offset(size.width - radiusPosition, 0), radius: Radius.circular(10), clockwise: false);
    path.lineTo(radiusPosition, 0);

    var shadowPaint = Paint()
      ..color = Colors.grey[400]
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, convertRadiusToSigma(3));

    canvas.drawPath(path, shadowPaint);

    final paint = Paint();
    paint.color = Colors.white;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  static double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }
}
