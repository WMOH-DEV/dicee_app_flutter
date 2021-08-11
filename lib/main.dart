import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Dice')),
      ),
      body: DicePage(),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dicee App',
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Center(child: Text('Dicee App')),
//         ),
//         body: Container(),
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;

  void randomNumber() {
    firstDiceNumber = Random().nextInt(6) + 1;
    secondDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$firstDiceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$secondDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
