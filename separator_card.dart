import 'dart:math';

import 'package:flutter/material.dart';

// DEPRECATED

class SeparatorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
      clipper: InverseCirclesClipper(),
    );
  }
}

class InverseCirclesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radConst = pi / 180;
    var rectLeft = Rect.fromLTRB(
        -(size.width * 0.022), 0, size.width * 0.022, size.height);
    var rectRight = Rect.fromLTRB(size.width - (size.width * 0.022), 0,
        size.width + (size.width * 0.022), size.height);
    path.arcTo(rectLeft, 270 * radConst, 180 * radConst, false);
    path.lineTo(size.width, size.height);
    path.arcTo(rectRight, 90 * radConst, 180 * radConst, false);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
