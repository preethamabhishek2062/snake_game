import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => HomeScreen(),
      '/Game': (context) => GamePage()
    });
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Snake Game 🐍',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/snake.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Game');
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                'Start Game',
                style: TextStyle(fontSize: 25),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                'Exit',
                style: TextStyle(fontSize: 25),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
          ),
        ]),
      ),
    );
  }
}
