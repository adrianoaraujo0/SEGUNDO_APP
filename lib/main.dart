import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero = 0;

  void aleatorio() {
    setState(() {
      Random aleatorio = new Random();
      numero = aleatorio.nextInt(100);
      print(numero);
    });
  }

  void resetar() {
    setState(() {
      numero -= numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Random',
            style: TextStyle(fontSize: 50),
          ),
          const SizedBox(height: 35),
          Text(
            numero.toString(),
            style: TextStyle(fontSize: 70),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: aleatorio,
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: const Size(130, 130),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70))),
                child: const Text(
                  'Gerar',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: resetar,
                style: TextButton.styleFrom(
                    fixedSize: const Size(130, 130),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70))),
                child: const Text(
                  'Resetar',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
