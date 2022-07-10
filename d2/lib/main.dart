import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum op { inc, dec }

class _HomeState extends State<Home> {
  int num1 = 0;
  int num2 = 0;

  void IncrementNum(op operation, int num) {
    print("operatio $operation num1 $num");

    switch (operation) {
      case op.inc:
        if (num == 1) {
          num1++;
        } else {
          num2++;
        }
        break;
      case op.dec:
        if (num == 1) {
          num1--;
        } else {
          num2--;
        }
        break;
      default:
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          Text("SUM > ${num1 + num2}"),
          Text("SUB > ${num1 - num2}"),
          Text("MUL > ${num1 * num2}"),
          Text("DIV > ${num1 / num2}"),
        ],
      ),
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => IncrementNum(op.inc, 1), child: Text("+")),
            ElevatedButton(
                onPressed: () => IncrementNum(op.dec, 1), child: Text("-"))
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => IncrementNum(op.inc, 2), child: Text("+")),
            ElevatedButton(
                onPressed: () => IncrementNum(op.dec, 2), child: Text("-"))
          ],
        )
      ]),
    );
  }
}
