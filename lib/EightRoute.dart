import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EightRoute extends StatefulWidget {
  const EightRoute({Key? key}) : super(key: key);

  @override
  State<EightRoute> createState() => _EightRouteState();
}

class _EightRouteState extends State<EightRoute> {
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
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 15),
                      child: Text(
                        "Signature",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                        child: Column(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                        child: choice1(),
                      ),
                      Container(
                        child: Row(
                          children: [
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 15, 20, 15),
                                child: TextField(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    maxLength: 3,
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white70,
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: "Max Marks"
// errorText: 'Wrong Password',
                                        )),
                              ),
                            ),
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: TextField(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    maxLength: 3,
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white70,
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                        )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/EightRoute');
                          },
                          child: Center(
                              widthFactor: 1,
                              heightFactor: 1,
                              child: Text(
                                'Next Page',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ))),
                    ])),
                    // Divider(height: 1),
                  ],
                ),
              ),
            )));
    ;
  }
}

class choice1 extends StatefulWidget {
  const choice1({Key? key}) : super(key: key);

  @override
  State<choice1> createState() => _choice1State();
}

class _choice1State extends State<choice1> {
  String dropdownvalue = 'Choice 1';
  // List of items in our dropdown menu
  var items = [
    'Choice 1',
    'Chemistry',
    'Computer Science',
    'Informatics Practices',
    'Information Technology',
    'Biology',
    'Biotechnology',
    'Technical Vocational Subjects',
    'Agriculture',
    'Engineering Graphics and Business Studies',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,
      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}
