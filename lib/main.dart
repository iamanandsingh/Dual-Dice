import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dual Dice',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 10),
          ),
          backgroundColor: Colors.red[900],
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
  int dicenum = 1;
  int dicenum2 = 1;
  int sum=0;


  void dicechange() {
    setState(() {
      this.dicenum = Random().nextInt(6) + 1;
      this.dicenum2 = Random().nextInt(6) + 1;
      sum=dicenum2+dicenum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            children: [

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dicechange();
                  },
                  child: Image.asset('images/dice$dicenum.png'),
                ),
              ),
              Expanded(

                child: FlatButton(
                  onPressed: () {
                    dicechange();
                  },
                  child: Image.asset('images/dice$dicenum2.png'),

                ),

              ),

            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Move $sum steps",
                style: TextStyle(color: Colors.white,
                    fontSize: 50
                ),
              ),
            ],
          ),

        ],

      );
  }
}
