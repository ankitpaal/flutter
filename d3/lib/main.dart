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

class _HomeState extends State<Home> {
  TextEditingController AnswerController = TextEditingController();
  TextEditingController v = TextEditingController();

  List<QuisItem> Quis = [
    QuisItem(1, ['snack', 'programming', 'UI', 'language'], "What is python"),
    QuisItem(2, ['low level', 'high level programming', 'UI', 'language'],
        "What is java"),
    QuisItem(2, ['low level', 'high level programming', 'UI', 'language'],
        "What is java"),
    QuisItem(2, ['low level', 'high level programming', 'UI', 'language'],
        "What is java"),
  ];

  int Score = 0;

  @override
  void initState() {
    super.initState();
    AnswerController.addListener(() {
      setState(() {});
    });
    v.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Current Score  $Score'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(),
              for (var ele in Quis)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(ele.Question),
                    TextField(
                      controller: AnswerController,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (AnswerController.text ==
                            ele.options[ele.CorrectOption]) {
                          Score++;
                        } else {
                          Score--;
                        }
                        setState(() {});
                      },
                      child: Text("Submit"),
                    ),
                    if (Score > 1) Text("Possitive")
                  ],
                )
            ],
          ),
        ));
  }
}

class QuisItem {
  int CorrectOption;
  List<String> options;
  String Question;
  QuisItem(this.CorrectOption, this.options, this.Question);
}
