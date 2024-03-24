import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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

class BasketBallCounterApp extends StatefulWidget {
  const BasketBallCounterApp({super.key});

  @override
  State createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounterApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Team A',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Text(
                  '$teamAPoints',
                  style: TextStyle(fontSize: 80, color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
                height: 300,
                width: 2,
                child: VerticalDivider(
                  width: 2,
                  color: Colors.grey,
                )),
            Column(
              children: [
                Text(
                  'Team B',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Text(
                  '$teamBPoints',
                  style: TextStyle(fontSize: 80, color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
        Spacer(flex: 1),
        ElevatedButton(
          onPressed: () {
            setState(() {
              teamAPoints = 0;
              teamBPoints = 0;
            });
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Colors.orange),
          child: Text('Reset', style: TextStyle(color: Colors.white)),
        ),
        Spacer(flex: 1)
      ],
    );
  }
}
