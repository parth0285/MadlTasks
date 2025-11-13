import 'package:flutter/material.dart';

void main() {
  runApp(Task14TabBarApp());
}

class Task14TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 14 - TabBar Layout",
      home: TabBarScreen(),
    );
  }
}

class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Step 2: Two tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("Task 14: TabBar Layout"),

          // Step 3: TabBar inside AppBar
          bottom: TabBar(
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
            ],
          ),
        ),

        // Step 4: TabBarView as body
        body: TabBarView(
          children: [
            Center(child: Text("Chats Screen", style: TextStyle(fontSize: 24))),
            Center(child: Text("Status Screen", style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
