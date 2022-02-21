import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = " ";
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  controller: firstController,
                )),
                Expanded(
                    child: TextFormField(
                  controller: secondController,
                ))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      addition();
                    },
                    child: Icon(CupertinoIcons.add)),
                TextButton(
                    onPressed: () {
                      minus();
                    },
                    child: Icon(CupertinoIcons.minus)),
                TextButton(
                    onPressed: () {
                      divide();
                    },
                    child: Icon(CupertinoIcons.divide)),
                TextButton(
                    onPressed: () {
                      multiply();
                    },
                    child: Icon(CupertinoIcons.multiply))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(output)
          ],
        ),
      ),
    );
  }

  void addition() {
    int a = int.parse(firstController.text);
    int b = int.parse(secondController.text);
    setState(() {
      output = "${a + b}";
    });
  }

  void minus() {
    int a = int.parse(firstController.text);
    int b = int.parse(secondController.text);
    setState(() {
      output = "${a - b}";
    });
  }

  void divide() {
    int a = int.parse(firstController.text);
    int b = int.parse(secondController.text);
    setState(() {
      output = "${a / b}";
    });
  }

  void multiply() {
    int a = int.parse(firstController.text);
    int b = int.parse(secondController.text);
    setState(() {
      output = "${a * b}";
    });
  }
}
