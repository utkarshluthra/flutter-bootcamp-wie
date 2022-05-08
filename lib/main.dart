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
  int total=2;
  @override
  Widget build(BuildContext context) {

    void randomise(){
      setState(() {
        left=Random().nextInt(6)+1;
        right=Random().nextInt(6)+1;
        total=left+right;
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
          body: TextButton(
            onPressed: (){
              randomise();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Click anywhere on the screen to roll die',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('./images/dice$left.png'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/dice$right.png'),
                      ),
                    ),


                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                    '$total',
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                  )
                )
              ],
            ),
          ),
          

        ),
    );
  }
}
