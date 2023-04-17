import 'package:flutter/material.dart';
import 'package:one_and_two/ui/pages/one_two_page/widgets/one_two_screen.dart';

class OneTwoPage extends StatelessWidget {
  const OneTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One and Two'),
      ),
      body: const OneTwoScreen(),
    );
  }
}
