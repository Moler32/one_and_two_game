import 'package:flutter/material.dart';

class DraggableContainer extends StatelessWidget {
  const DraggableContainer({
    super.key,
    this.scale,
    this.opacity,
    this.width,
    this.height,
    this.text,
  });

  final double? scale;
  final double? opacity;
  final double? width;
  final double? height;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 1,
      child: Opacity(
        opacity: opacity ?? 1,
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 100,
            height: 100,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(text ?? ''),
            ),
          ),
        ),
      ),
    );
  }
}
