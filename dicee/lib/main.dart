import 'package:flutter/material.dart';
import 'dart:math';

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
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice=1;  //can also use var...It is a dynamic data type
  int rightDice=1;


  void pressing(){
    rightDice=Random().nextInt(6)+1;//+1 because it will be generating numbers from 0-5. But we need a 6 and no 0
    leftDice=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  pressing();
                });
              },
              child: Image.asset('images/dice$leftDice.png'),

            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  pressing();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),

            ),
          ),
        ],
      ),
    );
  }
}


