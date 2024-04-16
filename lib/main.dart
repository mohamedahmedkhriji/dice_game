import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Align title to center
            children: [
              Icon(
                Icons.attach_money_sharp,
                color: Colors.yellowAccent,
                size: 40.0,
              ),
              const Text(
                'Dice game',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.amberAccent,
                ),
              ),
              Icon(
                Icons.attach_money_sharp,
                color: Colors.yellowAccent,
                size: 40.0,
              ),
            ],
          ),
        ),
        body: const Moha(),
      ),
    );
  }
}

class Moha extends StatefulWidget {
  const Moha({Key? key}) : super(key: key);

  @override
  State<Moha> createState() => _MohaState();
}

class _MohaState extends State<Moha> {
  int moha = 1;
  int you = 1;

  void random() {
    setState(() {
      you = Random().nextInt(6) + 1;
      moha = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center column items
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center row items
            children: [
              Flexible(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      random();
                    });
                  },
                  child: Image.asset('images/dice$moha.png'),
                ),
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    random();
                  },
                  child: Image.asset('images/dice$you.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 20), // Add some space between the dice and text
          Text(
            'Test your Luck',
            style: TextStyle(
              fontFamily: ('Pacifico'),
              color: Colors.white,
              fontSize: 45,
              letterSpacing: 2,
            ),
          )
        ],
      ),
    );
  }
}
