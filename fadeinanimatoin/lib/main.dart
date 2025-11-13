import 'package:flutter/material.dart';

void main() {
  runApp(Task6ListApp());
}

class Task6ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 6 - List of Items",
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 6: List of Items"),
      ),

      // Step 1: ListView.builder
      body: ListView.builder(
        itemCount: 10,   // Step 2
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item ${index + 1}"),  // Step 4
          );
        },
      ),
    );
  }
}
