import 'package:flutter/material.dart';

void main() {
  runApp(Task8BottomNavApp());
}

class Task8BottomNavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 8 - Bottom Navigation",
      home: BottomNavScreen(),
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  // Step 2: Current index of bottom navigation
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 8: Bottom Navigation Bar"),
      ),

      // Step 6: Different pages based on index
      body: Center(
        child: _currentIndex == 0
            ? Text("Home Page", style: TextStyle(fontSize: 24))
            : _currentIndex == 1
                ? Text("Search Page", style: TextStyle(fontSize: 24))
                : Text("Profile Page", style: TextStyle(fontSize: 24)),
      ),

      // Step 3,4,5: Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Step 4
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Step 5
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
