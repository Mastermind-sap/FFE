import 'package:ffe/homescreen.dart';
import 'package:ffe/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TaskZen());
}

class TaskZen extends StatelessWidget {
  const TaskZen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
