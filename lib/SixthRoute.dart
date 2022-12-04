import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SixthRoute extends StatefulWidget {
  // const SixthRoute({Key? key}) : super(key: key);

  String id;

  SixthRoute({required this.id});

  @override
  State<SixthRoute> createState() => _SixthRouteState();
}

class _SixthRouteState extends State<SixthRoute> {
  @override
  Widget build(BuildContext context) {
    String var2 = widget.id;
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
                        padding: EdgeInsets.fromLTRB(50, 20, 15, 15),
                        child: Center(
                          child: Text(
                            "Choice of ${var2} Branch",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 180, 1),
                        child: Center(
                          child: Text(
                            "B.Tech = Bachelors in Technology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 145, 1),
                        child: Center(
                          child: Text(
                            "CSE = Computer Science & Engineering",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(16, 1, 94, 1),
                        child: Center(
                          child: Text(
                            "ECE = Electronics & Communication Engineering",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 200, 1),
                        child: Center(
                          child: Text(
                            "IT = Informational Technology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 268, 1),
                        child: Center(
                          child: Text(
                            "BT = Biotechnology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 240, 15),
                        child: Center(
                          child: Text(
                            "INT = Integrated M Tech",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice1(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice2(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice3(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice4(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice5(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice6(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice7(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice8(id: var2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice9(id: var2),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/SeventhRoute');
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
                    // Divider(height: 1),
                  ],
                ),
              ),
            )));
    ;
  }
}

class choice1 extends StatefulWidget {
  // const choice1({Key? key}) : super(key: key);

  String id;
  choice1({required this.id});

  @override
  State<choice1> createState() => _choice1State();
}

class _choice1State extends State<choice1> {
  String dropdownvalue = 'Choice 1';
  // List of items in our dropdown menu
  var items = [
    'Choice 1',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice1': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice2 extends StatefulWidget {
  // const choice2({Key? key}) : super(key: key);
  String id;
  choice2({required this.id});

  @override
  State<choice2> createState() => _choice2State();
}

class _choice2State extends State<choice2> {
  String dropdownvalue = 'Choice 2';
  // List of items in our dropdown menu
  var items = [
    'Choice 2',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice2': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice3 extends StatefulWidget {
  // const choice3({Key? key}) : super(key: key);

  String id;
  choice3({required this.id});

  @override
  State<choice3> createState() => _choice3State();
}

class _choice3State extends State<choice3> {
  String dropdownvalue = 'Choice 3';
  // List of items in our dropdown menu
  var items = [
    'Choice 3',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice3': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice4 extends StatefulWidget {
  // const choice4({Key? key}) : super(key: key);
  String id;
  choice4({required this.id});
  @override
  State<choice4> createState() => _choice4State();
}

class _choice4State extends State<choice4> {
  String dropdownvalue = 'Choice 4';
  // List of items in our dropdown menu
  var items = [
    'Choice 4',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice4': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice5 extends StatefulWidget {
  // const choice5({Key? key}) : super(key: key);
  String id;
  choice5({required this.id});
  @override
  State<choice5> createState() => _choice5State();
}

class _choice5State extends State<choice5> {
  String dropdownvalue = 'Choice 5';
  // List of items in our dropdown menu
  var items = [
    'Choice 5',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice5': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice6 extends StatefulWidget {
  // const choice6({Key? key}) : super(key: key);
  String id;
  choice6({required this.id});

  @override
  State<choice6> createState() => _choice6State();
}

class _choice6State extends State<choice6> {
  String dropdownvalue = 'Choice 6';
  // List of items in our dropdown menu
  var items = [
    'Choice 6',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          print(dropdownvalue);
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice6': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice7 extends StatefulWidget {
  // const choice7({Key? key}) : super(key: key);

  String id;
  choice7({required this.id});

  @override
  State<choice7> createState() => _choice7State();
}

class _choice7State extends State<choice7> {
  String dropdownvalue = 'Choice 7';
  // List of items in our dropdown menu
  var items = [
    'Choice 7',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice7': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice8 extends StatefulWidget {
  // const choice8({Key? key}) : super(key: key);
  String id;
  choice8({required this.id});

  @override
  State<choice8> createState() => _choice8State();
}

class _choice8State extends State<choice8> {
  String dropdownvalue = 'Choice 8';
  // List of items in our dropdown menu
  var items = [
    'Choice 8',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice8': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice9 extends StatefulWidget {
  // const choice9({Key? key}) : super(key: key);

  String id;
  choice9({required this.id});

  @override
  State<choice9> createState() => _choice9State();
}

class _choice9State extends State<choice9> {
  String dropdownvalue = 'Choice 9';
  // List of items in our dropdown menu
  var items = [
    'Choice 9',
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
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
          var collection = FirebaseFirestore.instance.collection('application');
          collection
              .doc(widget.id) // <-- Doc ID where data should be updated.
              .update({
                'choice9': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}
