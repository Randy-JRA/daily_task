import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'daily task',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Daily Widgets'),
        ),
        body: Center(
          child: Container(
            color: Colors.white70,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text widget
                    const Text(
                      'Are you interested in learning some flutter widgets',
                    ),
                    const Text(
                      'widgets Available are:Text widget, Button widget, Check box widget, and slider widget',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Below is a text widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const Text(
                      'I am a text widget.',
                      style: TextStyle(color: Colors.red),
                    ),

                    const Text(
                      'Below is an icon widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    // Icon widget
                    const Icon(Icons.home),

                    const Text(
                      'Below is a button widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    // Button widget
                    ElevatedButton(
                      child: const Text('Button'),
                      onPressed: () {},
                    ),

                    const Text(
                      'Below is a check box widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    // Checkbox widget
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),

                    const Text(
                      'Below is a slider widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    // Slider widget
                    Slider(
                      value: 50,
                      min: 0,
                      max: 100,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            child: const Card(
              child: Padding( 
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text widget
                    Text(
                      'This is the second card',
                    ),
                  ],
                ),
              ),
            ),
            ),
          ),
        ),
      );
  }
}