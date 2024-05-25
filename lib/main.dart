import 'package:first_project/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketBallCounterApp());
}

class BasketBallCounterApp extends StatelessWidget {
  const BasketBallCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Points Counter',
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(
                              fontSize: 80, color: Colors.black),
                        ),
                        ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Colors.orange),
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(height: 8),
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
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(height: 8),
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
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                    const SizedBox(
                        height: 300,
                        width: 2,
                        child: VerticalDivider(
                          width: 2,
                          color: Colors.grey,
                        )),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(
                              fontSize: 80, color: Colors.black),
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
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(height: 8),
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
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(height: 8),
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
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    )
                  ],
                ),
                const Spacer(flex: 1),
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
                  child: const Text(
                      'Reset', style: TextStyle(color: Colors.white)),
                ),
                const Spacer(flex: 1)
              ],
            ));
      },
    );
  }
}
