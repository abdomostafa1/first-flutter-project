import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            children: [
              Icon(Icons.call),
              Text('(+01) 203883782'),
            ],
          )),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Icon(Icons.email),
            Text('ScholarTech@gmail.com'),
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
