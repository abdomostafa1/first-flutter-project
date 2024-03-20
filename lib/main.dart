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
        appBar: AppBar(
          title: const Text('abdo mostafa'),
          centerTitle: true,
          backgroundColor: const Color(0xFFd3d3d3),
        ),
        body: const Image(
          image: AssetImage('images/black.jpg'),
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
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
