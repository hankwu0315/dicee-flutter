import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 5;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  print('2');
                },
                child: Image.asset('images/dice2.png'),
              )
          )
        ],
      ),
    );
  }
}
