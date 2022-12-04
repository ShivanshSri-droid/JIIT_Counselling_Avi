import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SeventhRoute extends StatefulWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  State<SeventhRoute> createState() => _SeventhRouteState();
}

class _SeventhRouteState extends State<SeventhRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            leading: Image.asset('images/jiit_logo.png'),
            title: const Center(
                child: Text('Welcome to JIIT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black)))),
        body: Scrollbar(
          //ADDED THIS
          thumbVisibility: true, //always show scrollbar
          thickness: 10, //width of scrollbar
          radius: Radius.circular(10), //corner radius of scrollbar
          scrollbarOrientation:
              ScrollbarOrientation.right, //which side to show scrollbar
          child: SingleChildScrollView(
              child: Column(children: [
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 15),
              child: Text(
                "Declaration by the student",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 12, 15),
                child: Text(
                  "I hereby declare that all the particulars stated in this "
                  "application form are true to the best of my knowledge and belief. I have read the "
                  "Information Brochure and the admission procedure and I shall abide by them. In the event "
                  "of suppression or distortion of any fact like date of birth, nationality, "
                  "category, qualification, etc. made in my application form, I understand that I will be "
                  "denied the oppurtunity to be admitted to JIIT and if already admitted, my admission would"
                  "stand cancelled. I also understand that the decision of JIIT regarding my admission will"
                  " be final and binding to me.",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 12, 15),
                child: Text(
                  "I am aware of Universities approach towards ragging and the punishment to which I am"
                  " liable if found of guilty of ragging.",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                )),
            Container(child: boxes()),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/EightRoute');
                },
                child: Center(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Text(
                      'Next Page',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ))),
          ])),
          // Divider(height: 1),
        ),
      ),
    );
    ;
  }
}

class boxes extends StatefulWidget {
  const boxes({Key? key}) : super(key: key);

  @override
  State<boxes> createState() => _boxesState();
}

class _boxesState extends State<boxes> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
