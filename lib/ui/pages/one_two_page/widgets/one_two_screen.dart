import 'package:flutter/material.dart';
import 'package:one_and_two/ui/pages/one_two_page/widgets/drag_target_container.dart';
import 'package:one_and_two/ui/pages/one_two_page/widgets/draggable_container.dart';

class OneTwoScreen extends StatefulWidget {
  const OneTwoScreen({super.key});

  @override
  State<OneTwoScreen> createState() => _OneTwoScreenState();
}

class _OneTwoScreenState extends State<OneTwoScreen> {
  final Widget _item1 = const DraggableContainer(text: '1');
  final Widget _item2 = const DraggableContainer(text: '2');

  bool isOneSuccessful = false;
  bool isTwoSuccessful = false;

  String? _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDraggableRow(),
          const SizedBox(height: 50),
          _buildDragTargetROw(),
        ],
      ),
    );
  }

  Widget _buildDraggableRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        isOneSuccessful
            ? const SizedBox(
                width: 100,
              )
            : Draggable(
                data: _item1,
                feedback: const DraggableContainer(
                  scale: 1.1,
                  opacity: 0.85,
                  text: '1',
                ),
                childWhenDragging: const DraggableContainer(
                  opacity: 0.5,
                  text: '1',
                ),
                child: const DraggableContainer(
                  text: '1',
                ),
              ),
        isTwoSuccessful
            ? const SizedBox(
                width: 100,
              )
            : Draggable(
                data: _item2,
                feedback: const DraggableContainer(
                  scale: 1.1,
                  opacity: 0.85,
                  text: '2',
                ),
                childWhenDragging: const DraggableContainer(
                  opacity: 0.5,
                  text: '2',
                ),
                child: const DraggableContainer(
                  text: '2',
                ),
              ),
      ],
    );
  }

  Widget _buildDragTargetROw() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DragTarget<DraggableContainer>(
          builder: (context, candidateItems, rejectedItems) {
            return isOneSuccessful
                ? const DraggableContainer(
                    text: '1',
                  )
                : const DragTargetContainer(
                    text: '1',
                  );
          },
          onWillAccept: (data) {
            _value = data?.text ?? 'null';
            if (_value == '1') {
              return true;
            }
            return false;
          },
          onAccept: (item) {
            setState(() {
              isOneSuccessful = true;
            });
          },
        ),
        DragTarget<DraggableContainer>(
          builder: (context, candidateItems, rejectedItems) {
            return isTwoSuccessful
                ? const DraggableContainer(
                    text: '2',
                  )
                : const DragTargetContainer(
                    text: '2',
                  );
          },
          onWillAccept: (data) {
            _value = data?.text ?? 'null';
            if (_value == '2') {
              return true;
            }
            return false;
          },
          onAccept: (item) {
            setState(() {
              isTwoSuccessful = true;
            });
          },
        ),
      ],
    );
  }
}
