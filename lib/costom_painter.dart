import 'package:flutter/material.dart';

class CostomPainter extends StatefulWidget {
  const CostomPainter({super.key});

  @override
  State<CostomPainter> createState() => _CostomPainterState();
}

class _CostomPainterState extends State<CostomPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPaint(
                size: const Size(200, 200),
                painter: Circle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final paint1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final paintR = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    canvas.drawCircle(center, radius, paint);
    // canvas.drawRRect(
    // RRect.fromLTRBR(50, 50, 100, 100, const Radius.circular(12)), paintR);
    canvas.drawRRect(const RRect.fromLTRBXY(100, 150, 20, 20, 50, 20), paintR);
    canvas.drawLine(
      const Offset(100, 100),
      const Offset(100, 400),
      paint1,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
