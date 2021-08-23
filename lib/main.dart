import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dice Roller App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dicenumber = 1;

  changeDice() {
    setState(() {
      dicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Colors.indigo[600],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/$dicenumber.png',
              height: 250,
              width: 250,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            height: 40,
            minWidth: 100,
            color: Colors.indigo[700],
            onPressed: changeDice,
            child: Text(
              'Roll',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Text(
            'Developed By : Laxman Magarati',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}
