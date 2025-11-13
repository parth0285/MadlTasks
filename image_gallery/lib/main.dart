import 'package:flutter/material.dart';

void main() {
  runApp(StateChangeApp());
}

class StateChangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Change Task",
      home: ColorToggleScreen(),
    );
  }
}

class ColorToggleScreen extends StatefulWidget {
  @override
  _ColorToggleScreenState createState() => _ColorToggleScreenState();
}

class _ColorToggleScreenState extends State<ColorToggleScreen> {
  // Step 1: Variable to manage background color
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Step 2: Use backgroundColor
      backgroundColor: _backgroundColor,

      appBar: AppBar(
        title: Text("State Change Example"),
      ),

      // Step 3: FloatingActionButton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: () {
          // Step 4: Toggle color
          setState(() {
            _backgroundColor =
                _backgroundColor == Colors.white ? Colors.blue : Colors.white;
          });
        },
      ),
    );
  }
}
