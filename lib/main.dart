import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:
            const Text('Points Counter', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: BasketBallCounterApp(),
    ),
  ));
}

class BasketBallCounterApp extends StatelessWidget {
  BasketBallCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text('Team A',style: TextStyle(fontSize: 32,color: Colors.black),)
              ],
            )
          ],
        ),
        ElevatedButton(
          onPressed: null,
          child: Text('Reset', style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
