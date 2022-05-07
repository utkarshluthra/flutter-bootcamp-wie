import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left =1;
  int right =1;
  String link='';

  @override
  Widget build(BuildContext context) {

    void Randomise(){
      setState(() {
        left=Random().nextInt(6)+1;
        right=Random().nextInt(6)+1;
      });

    }

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Dice'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          backgroundColor: Colors.red,
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: (){
                    Randomise();
                  },
                  child: Image.asset('./images/dice$left.png')
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    Randomise();
                  },
                  child: Image.asset('images/dice$right.png'),
                ),
              ),
              
            ],
          ),
        ),
    );
  }
}
