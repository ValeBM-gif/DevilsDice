import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 175, 203, 1),
        appBar: AppBar(
          title: Text("Devil's Dice"),
          backgroundColor: Color.fromRGBO(143, 8, 31, 1),
        ),
        body: DicePage()),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void sortNumbers() {
    setState(() {
      rightDiceNumber = Random().nextInt(5) + 1;
      leftDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/tay.jpeg'),
              radius: 50,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    sortNumbers();
                  },
                  child: Image.asset('images/$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      sortNumbers();
                    },
                    child: Image.asset('images/$rightDiceNumber.png')),
              )
            ],
          ),
          Image.asset(
            'images/devil2.png',
            height: 400,
          ),
        ],
      ),
    );
  }
}
