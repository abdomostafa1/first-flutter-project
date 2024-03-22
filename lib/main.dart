import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const AppWid());
}

class AppWid extends StatelessWidget {
  const AppWid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF2B455F),
        body: businessCardApp(),
      ),
    );
  }
}

Widget businessCardApp() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 64,
        backgroundColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(4), // Border radius
          child: ClipOval(child: Image.asset('images/black.jpg')),
        ),
      ),
      Text(
        'Abdo Mostafa',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Pacifico',
          fontSize: 32.0,
        ),
      ),
      Text(
        'FLUTTER DEVELOPER',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
      Divider(
        height: 10,
        color: Colors.grey,
        indent: 40.0,
        endIndent: 40.0,
      ),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: Icon(Icons.call),
              ),
              Text('(+01) 203883782'),
            ],
          )),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.email,
                size: 24,
                color: Color(0xFF2B455F),
              ),
            ),
            Text(
              'ScholarTech@gmail.com',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      )
    ],
  );
}

Widget column() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        color: Colors.yellowAccent,
        width: 100,
        height: 100,
        child: const Text('hello world'),
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        child: const Text('hello world'),
      ),
      Container(
        color: Colors.deepOrangeAccent,
        width: 100,
        height: 100,
        child: const Text('hello world'),
      ),
    ],
  );
}

Widget row() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        color: Colors.yellowAccent,
        width: 100,
        height: 200,
        child: const Text('hello world'),
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        child: const Text('hello world'),
      ),
      Container(
        color: Colors.deepOrangeAccent,
        width: 100,
        height: 100,
        child: const Text('hello world'),
      ),
    ],
  );
}
