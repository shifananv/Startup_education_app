import 'package:flutter/material.dart';
import 'dart:math';

class Pentagon extends StatelessWidget {
  final double size;
  final Color color;

  const Pentagon({super.key, this.size = 100.0, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: PentagonPainter(color),
    );
  }
}

class PentagonPainter extends CustomPainter {
  final Color color;

  PentagonPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;

    Paint paint = Paint()..color = color;

    Path path = Path();
    path.moveTo(centerX + radius * cos(0), centerY + radius * sin(0));
    for (int i = 1; i <= 5; i++) {
      path.lineTo(
        centerX + radius * cos(2 * pi * i / 5),
        centerY + radius * sin(2 * pi * i / 5),
      );
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(PentagonPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
