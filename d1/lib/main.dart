import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: counter(),
    );
  }
}

class counter extends StatefulWidget {
  counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(child: Text("press this many time $number")),
      floatingActionButton: ElevatedButton(
        child: Text("submit"),
        onPressed: () {
          number++;
          setState(() {});
        },
      ),
    );
  }
}
