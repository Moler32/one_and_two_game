import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DragTargetContainer extends StatelessWidget {
  const DragTargetContainer({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [6],
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(
            text ?? '',
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
