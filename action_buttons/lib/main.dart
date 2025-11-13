import 'package:flutter/material.dart';

void main() {
  runApp(ActionButtonsApp());
}

class ActionButtonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 3 - Action Buttons",
      home: ActionButtonsScreen(),
    );
  }
}

class ActionButtonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 3: Action Buttons"),
      ),
      body: Center(
        // Step 1: Row in center
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Step 3: Even spacing
          children: [
            // Step 2: Icon Buttons
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                print("Call Button Pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                print("Message Button Pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.email),
              onPressed: () {
                print("Email Button Pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
