import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreetingWidget(
                greetingMessage: 'Greetings \u2713',
              ),
              SizedBox(height: 32.0),
              GreetingWidget(
                greetingMessage: 'Counter \u2713',
              ),
              SizedBox(height: 32.0),
              GreetingWidget(
                greetingMessage: 'Tree \u2713',
              ),
              SizedBox(height: 32.0),
              RootWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
