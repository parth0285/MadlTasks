import 'package:flutter/material.dart';

void main() {
  runApp(Task13AnimatedContainerApp());
}

class Task13AnimatedContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 13 - Animated Container",
      home: AnimatedContainerScreen(),
    );
  }
}

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  // Step 1: Initial size
  double _width = 100;
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 13: Animated Container"),
      ),

      body: Center(
        // Step 2: Animated Container
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: Colors.blue,
          duration: Duration(seconds: 1), // animation duration
          curve: Curves.easeInOut,
        ),
      ),

      // Step 3: Floating Action Button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          // Step 4: Change size
          setState(() {
            _width = _width == 100 ? 200 : 100;
            _height = _height == 100 ? 200 : 100;
          });
        },
      ),
    );
  }
}
