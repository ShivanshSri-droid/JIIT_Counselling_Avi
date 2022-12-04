import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jiit_counselling_trial1/firebase_options.dart';
import 'fourthRoute.dart';
// import 'package:jiit_counselling_trial1/fourthRoute.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final fNameController = TextEditingController();
    final mNameController = TextEditingController();
    final dobController = TextEditingController();
    final natController = TextEditingController();
    final adhrController = TextEditingController();
    final genderController = TextEditingController();
    final religionController = TextEditingController();
    final addController = TextEditingController();
    final distController = TextEditingController();
    final pinController = TextEditingController();
    final mobController = TextEditingController();
    final landController = TextEditingController();
    final emailController = TextEditingController();
    final docUser = FirebaseFirestore.instance.collection('application').doc();
    String id = docUser.toString().substring(52, 72);
    // String id = "gB5YoZ8bc4CC6UjzsWIh";
    final json = {
      'id': id,
      'name': "",
      'fname': "",
      'mname': "",
      'dob': "",
      'nationality': "",
      'adhaar': "",
      'religion': "",
      'address': "",
      'district': "",
      'pincode': "",
      'mobile': "",
      'landline': "",
      'email': "",
      'stateCode1': "",
      'schoolName': "",
      'schoolDist': "",
      'schoolState': "",
      'board': "",
      'yop': "",
      'rollNum': "",
      'maxMarksMath': "",
      'marksObtMath': "",
      'maxMarksPhy': "",
      'marksObtPhy': "",
      'maxMarksSub3': "",
      'marksObtSub3': "",
      'maxMarksTotal': "",
      'marksObtTotal': "",
      'ddNum': "",
      'dob1': "",
      'bank': "",
      'nameACHldr': "",
      'bankName': "",
      'accNum': "",
      'branchName': "",
      'addressOfBank': "",
      'ifscCode': "",
      'choice6': "",
    };

    docUser.set(json);
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
                        padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
                        child: Center(
                            child: Text('Personal Info',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.black)))),
                    Container(
                        child: Column(children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                          child: TextField(
                            controller: nameController,

                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            // controller: nameController,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              labelText: 'Name of the candidate',
                              // errorText: 'Wrong User Name',
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 30, 40, 15),
                          child: TextField(
                              controller: fNameController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Father's Name"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: mNameController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Mother's Name"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                        child: TextFormField(
                            controller: dobController,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6),
                              CardMonthInputFormatter(),
                            ],
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                                labelText: "Date of Birth (dd/mm/yy)"
                                // errorText: 'Wrong Password',
                                )),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: natController,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Nationality"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: adhrController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(12),
                                CardNumberInputFormatter(),
                              ],
                              // maxLength: 12,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: "Adhaar Number of the Candidate",
                                // errorText: 'Wrong Password',
                              ))),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(50, 15, 40, 15),
                            child: gender(id: id),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(40, 15, 50, 15),
                            child: category(id: id),
                          )
                        ],
                      )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: religionController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Religion"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                          // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: Row(
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 15, 10, 15),
                              child: Text(
                                "Person with disability",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Container(child: boxes(id: id)),
                        ],
                      )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 220, 15),
                          child: Center(
                              child: Text('Permanent Address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black)))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 1),
                          child: TextField(
                              controller: addController,
                              maxLines: 5,
                              minLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Address"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                        child: Row(
                          children: [
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 0, 1),
                                child: TextField(
                                    controller: distController,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
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
                                        labelText: "District"
// errorText: 'Wrong Password',
                                        )),
                              ),
                            ),
                            new Flexible(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(60, 10, 40, 1),
                                  child: statecode1(id: id),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
                          child: TextField(
                              controller: pinController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 6,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: "Pincode",
                                // errorText: 'Wrong Password',
                              ))),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Center(
                              child: Text(
                                  'Current Correspondance Address (leave if same)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black)))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 1),
                          child: TextField(
                              maxLines: 5,
                              minLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: "Address"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                        child: Row(
                          children: [
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 0, 1),
                                child: TextField(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
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
                                        labelText: "District"
// errorText: 'Wrong Password',
                                        )),
                              ),
                            ),
                            new Flexible(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(1, 10, 0, 1),
                                  child: statecode2(), //ADDED THIS
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 6,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: "Pincode",
                                // errorText: 'Wrong Password',
                              ))),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 271, 15),
                          child: Center(
                              child: Text('Contact Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black)))),
                      Container(
                        child: Row(
                          children: [
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 0, 1),
                                child: TextField(
                                    controller: mobController,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    maxLength: 10,
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
                                      labelText: "Mobile Number",
                                    )),
                              ),
                            ),
                            new Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 40, 1),
                                child: TextField(
                                    controller: landController,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
// controller: nameController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    maxLength: 11,
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
                                        labelText: "LandLine No."
// errorText: 'Wrong Password',
                                        )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
                          child: TextField(
                              controller: emailController,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: "Email-ID",
                                // errorText: 'Wrong Password',
                              ))),
                      ElevatedButton(
                          onPressed: () async {
                            final name = nameController.text;
                            final fname = fNameController.text;
                            final mname = mNameController.text;
                            final dob = dobController.text;
                            final nationality = natController.text;
                            final adhaar = adhrController.text;
                            final religion = religionController.text;
                            final address = addController.text;
                            final district = distController.text;
                            final pincode = pinController.text;
                            final mobile = mobController.text;
                            final landline = landController.text;
                            final email = emailController.text;

                            // String id = docUser.toString().substring(52, 72);
                            // String id = "gB5YoZ8bc4CC6UjzsWIh";
                            // final json = {
                            //   'id': id,
                            //   'name': name,
                            //   'fname': fname,
                            //   'mname': mname,
                            //   'dob': dob,
                            //   'nationality': nationality,
                            //   'adhaar': adhaar,
                            //   'religion': religion,
                            //   'address': address,
                            //   'district': district,
                            //   'pincode': pincode,
                            //   'mobile': mobile,
                            //   'landline': landline,
                            //   'email': email,
                            // };

                            // await docUser.set(json);

                            var collection = FirebaseFirestore.instance
                                .collection('application');
                            collection
                                .doc(
                                    id) // <-- Doc ID where data should be updated.
                                .update({
                                  'name': name,
                                  'fname': fname,
                                  'mname': mname,
                                  'dob': dob,
                                  'nationality': nationality,
                                  'adhaar': adhaar,
                                  'religion': religion,
                                  'address': address,
                                  'district': district,
                                  'pincode': pincode,
                                  'mobile': mobile,
                                  'landline': landline,
                                  'email': email,
                                }) // <-- New data
                                .then((_) => print('Updated'))
                                .catchError(
                                    (error) => print('Update failed: $error'));

                            // Navigator.pushNamed(context, '/FourthRoute');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FourthRoute(id: id)));
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

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class gender extends StatefulWidget {
  // const gender({Key? key}) : super(key: key);
  String id;
  gender({required this.id});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  String dropdownvalue = 'Gender ';
  // List of items in our dropdown menu
  var items = [
    'Gender ',
    'Male',
    'Female',
    'Trans Gender',
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
                'gender': dropdownvalue,
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

class category extends StatefulWidget {
  // const category({Key? key}) : super(key: key);

  String id;
  category({required this.id});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  String dropdownvalue = 'Category';
  // List of items in our dropdown menu
  var items = [
    'Category',
    'General',
    'SC',
    'ST',
    'OBC',
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
                'category': dropdownvalue,
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

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class boxes extends StatefulWidget {
  // const boxes({Key? key}) : super(key: key);
  String id;
  boxes({required this.id});

  @override
  State<boxes> createState() => _boxesState();
}

class _boxesState extends State<boxes> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 1,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = 1;
                var collection =
                    FirebaseFirestore.instance.collection('application');
                collection
                    .doc(widget.id) // <-- Doc ID where data should be updated.
                    .update({
                      'pwd': 'yes',
                    }) // <-- New data
                    .then((_) => print('Updated'))
                    .catchError((error) => print('Update failed: $error'));
              });
            }),
        SizedBox(width: 1.0),
        Text(
          "Yes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Radio(
            value: 2,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = 2;

                var collection =
                    FirebaseFirestore.instance.collection('application');
                collection
                    .doc(widget.id) // <-- Doc ID where data should be updated.
                    .update({
                      'pwd': 'yes',
                    }) // <-- New data
                    .then((_) => print('Updated'))
                    .catchError((error) => print('Update failed: $error'));
              });
            }),
        SizedBox(width: 1.0),
        Text(
          "No",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  // ADDED THIS
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  '); // Add double spaces.
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class statecode1 extends StatefulWidget {
  // const statecode1({Key? key}) : super(key: key);
  String id;
  statecode1({required this.id});

  @override
  State<statecode1> createState() => _statecode1State();
}

class _statecode1State extends State<statecode1> {
  String dropdownvalue = 'State Code';
  // List of items in our dropdown menu
  var items = [
    'State Code',
    'ANDHRA PRADESH',
    'ARUNACHAL PRADESH',
    'ASSAM',
    'BIHAR',
    'CHATTISGARH',
    'GOA',
    'GUJARAT',
    'HARYANA',
    'HIMACHAL PRADESH',
    'JHARKHAND',
    'KARNATAKA',
    'KERALA',
    'MADHYA PRADESH',
    'MAHARASHTRA',
    'MANIPUR',
    'MEGHALAYA',
    'MIZORAM',
    'NAGALAND',
    'ODISHA',
    'PUNJAB',
    'RAJASTHAN',
    'SIKKIM',
    'TAMIL NADU',
    'TELANGANA',
    'UTTAR PRADESH',
    'UTTARAKHAND',
    'WEST BENGAL',
    'ANDAMAN AND NICOBAR',
    'CHANDIGARH',
    'DADRA NAGAR HAVELI',
    'DAMAN DIU',
    'DELHI',
    'JAMMU AND KASHMIR',
    'LAKSHADWEEP',
    'LADAKH',
    'PUDUCHERRY',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,
      // Down Arrow Icon
      icon: Icon(Icons.keyboard_arrow_down),

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
                'stateCode1': dropdownvalue,
              }) // <-- New data
              .then((_) => print('Updated'))
              .catchError((error) => print('Update failed: $error'));
        });
      },
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class statecode2 extends StatefulWidget {
  const statecode2({Key? key}) : super(key: key);

  @override
  State<statecode2> createState() => _statecode2State();
}

class _statecode2State extends State<statecode2> {
  String dropdownvalue = 'State Code';
  // List of items in our dropdown menu
  var items = [
    'State Code',
    'ANDHRA PRADESH',
    'ARUNACHAL PRADESH',
    'ASSAM',
    'BIHAR',
    'CHATTISGARH',
    'GOA',
    'GUJARAT',
    'HARYANA',
    'HIMACHAL PRADESH',
    'JHARKHAND',
    'KARNATAKA',
    'KERALA',
    'MADHYA PRADESH',
    'MAHARASHTRA',
    'MANIPUR',
    'MEGHALAYA',
    'MIZORAM',
    'NAGALAND',
    'ODISHA',
    'PUNJAB',
    'RAJASTHAN',
    'SIKKIM',
    'TAMIL NADU',
    'TELANGANA',
    'UTTAR PRADESH',
    'UTTARAKHAND',
    'WEST BENGAL',
    'ANDAMAN AND NICOBAR',
    'CHANDIGARH',
    'DADRA NAGAR HAVELI',
    'DAMAN DIU',
    'DELHI',
    'JAMMU AND KASHMIR',
    'LAKSHADWEEP',
    'LADAKH',
    'PUDUCHERRY',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,
      // Down Arrow Icon
      icon: Icon(Icons.keyboard_arrow_down),

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
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}
