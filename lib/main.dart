import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dice1 = rollDice();
  String dice2 = rollDice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(
          "Dice App",
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        onPressed: () => setState(() => dice1 = rollDice()),
                        child: Image.asset('images/$dice1.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        onPressed: () => setState(() => dice2 = rollDice()),
                        child: Image.asset(
                            'images/$dice2.png'), // onPressed: rollDice(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: TextButton(
                  onPressed: () =>
                      setState(() => {dice1 = rollDice(), dice2 = rollDice()}),
                  child: Text(
                    "ROLL BOTH DICES",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String rollDice() {
  List<String> options = ['dice1', 'dice2', 'dice3', 'dice4', 'dice5', 'dice6'];
  Random random = Random();
  return options[random.nextInt(options.length)];
}

/*

 body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Image(
                    width: 100.0,
                    height: 100.0,
                    image: AssetImage("images/${getRandomDice()}.png"),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Image(
                    width: 100.0,
                    height: 100.0,
                    image: AssetImage("images/${getRandomDice()}.png"),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),

 */
