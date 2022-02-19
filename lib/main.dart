import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  List SNW = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'diez',
  ];

  List ENW = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
  ];
  void display() {
    setState(() {
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spanish numbers'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(SNW[counter],
                  style: TextStyle(color: Colors.amber.shade900, fontSize: 32)),
              SizedBox(
                height: 32,
              ),
              Text(ENW[counter],
                  style: TextStyle(color: Colors.blue, fontSize: 32)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: display,
          backgroundColor: Colors.pink,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartFloat,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
