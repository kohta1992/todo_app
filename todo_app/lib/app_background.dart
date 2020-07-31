import 'package:flutter/material.dart';

class AppBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;
      return Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFE4E6F1),
          ),
          CustomPaint(
            painter: BackgroundPainter(),
            child: Container(
              width: width,
              height: height,
            ),
          ),
        ],
      );
    });
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 三角1
    var paint = Paint()
      ..color = Colors.white
      ..blendMode = BlendMode.softLight;
    var path = Path()
      ..moveTo(size.width / 3 * 2, 0)
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);

    // 三角2
    paint = Paint()
      ..color = Colors.white
      ..blendMode = BlendMode.softLight;
    path = Path()
      ..moveTo(size.width * 5 / 4, size.height)
      ..lineTo(0, size.height / 4)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
