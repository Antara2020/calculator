import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        padding: EdgeInsets.all(24),
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
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                )),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: TextFormField(
                  controller: secondController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Container(
                height: 50,
                width: 1000,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(border: Border.all()),
                child: output.trim().isEmpty
                    ? Text(
                        "output",
                        style: TextStyle(color: Colors.grey),
                      )
                    : Text(output))
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
