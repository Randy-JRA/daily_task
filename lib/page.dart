import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'daily task',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('5 Different Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text widget
              const Text(
                'Below is a text widget.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                ),),
              const Text('I am a text widget.', style: TextStyle(color: Colors.red),),

              const Text('Below is an icon widget.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                ),),
              // Icon widget
              const Icon(Icons.home),

              const Text('Below is a button widget.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                ),),
              // Button widget
              ElevatedButton(
                child: const Text('Button'),
                onPressed: () {},
              ),

              const Text('Below is a check box widget.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                ),),
              // Checkbox widget
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),


              const Text('Below is a slider widget.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                ),),
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
    );
  }
}