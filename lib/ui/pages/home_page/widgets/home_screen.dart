import 'package:flutter/material.dart';
import 'package:one_and_two/ui/pages/one_two_page/one_two_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OneTwoPage(),
            ),
          );
        },
        child: const Text('GO!'),
      ),
    );
  }
}
