import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(Task4NavigationApp());
}

class Task4NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 4 Navigation",
      home: HomeScreen(),
    );
  }
}
