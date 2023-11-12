import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  GreetingWidget({required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        greetingMessage,
        style: TextStyle(
          fontSize: 24.0,
          fontStyle: FontStyle.italic,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeaderWidget(),
        SizedBox(height: 32.0),
        CounterWidget(),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Tree Widget',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Counted: $counter',
            style: TextStyle(fontSize: 32.0, color: Colors.redAccent),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.purpleAccent,
              fixedSize: Size(128.0, 32.0),
            ),
            onPressed: incrementCounter,
            child: Text(
              'Count!',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
