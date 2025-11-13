import 'package:flutter/material.dart';

void main() {
  runApp(Task10DraggableApp());
}

class Task10DraggableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 10 - Draggable & DragTarget",
      home: DraggableDemo(),
    );
  }
}

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color targetColor = Colors.grey;     // Target initial color
  String targetText = "Drop Here";     // Initial text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 10: Draggable Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Step 1: Draggable widget
          Center(
            child: Draggable<String>(
              data: "dropped",   // data to pass
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Text(
                  "Drag me",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              // Step 2: feedback (transparent)
              feedback: Opacity(
                opacity: 0.6,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text(
                    "Drag me",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              childWhenDragging: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue.shade200,
                child: Text(
                  "Dragging...",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          // Step 3: DragTarget
          DragTarget<String>(
            onAccept: (data) {
              // Step 4: Change UI when item is dropped
              setState(() {
                targetColor = Colors.green;
                targetText = "Dropped!";
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 150,
                width: 150,
                color: targetColor,
                child: Center(
                  child: Text(
                    targetText,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
