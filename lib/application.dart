import 'package:flutter/material.dart';
import 'package:one_and_two/ui/pages/home_page/home_page.dart';

class OneAndTwoApp extends StatelessWidget {
  const OneAndTwoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One and Two',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
