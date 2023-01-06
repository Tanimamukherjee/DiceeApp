import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('DiceeApp'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber=1;
  int rightdicenumber=1;

  void changeDiceFace() {
    setState(() {
      leftdicenumber =Random().nextInt(6)+1;
      rightdicenumber =Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Image.asset('images/diceimage$leftdicenumber.png')
              )
          ),
          Expanded(
              child: TextButton(
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Image.asset('images/diceimage$rightdicenumber.png')
              )
          ),
        ],
      ),
    );

  }
}






