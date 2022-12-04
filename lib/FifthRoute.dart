import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jiit_counselling_trial1/firebase_options.dart';
import 'SixthRoute.dart';

class FifthRoute extends StatelessWidget {
  // const FifthRoute({Key? key}) : super(key: key);

  String id;

  FifthRoute({required this.id});

  final ddNum = TextEditingController();
  final dob = TextEditingController();
  final bank = TextEditingController();
  final nameACHldr = TextEditingController();
  final bankName = TextEditingController();
  final accNum = TextEditingController();
  final branchName = TextEditingController();
  final addressOfBank = TextEditingController();
  final ifscCode = TextEditingController();

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
                        padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                        child: Center(
                            child: Text('Demand draft Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black)))),
                    Container(
                        padding: EdgeInsets.fromLTRB(1, 2, 10, 15),
                        child: Center(
                            child: Text(
                                '(Not applicable in case Form is purchased on payment in cash or by post from Institute Counter)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black)))),
                    Container(
                      child: Row(
                        children: [
                          new Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 0, 1),
                              child: TextField(
                                  controller: ddNum,
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
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: "DD Number",
                                  )),
                            ),
                          ),
                          new Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 40, 20),
                              child: TextFormField(
                                  controller: dob,
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
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText: "Date of Birth"
                                      // errorText: 'Wrong Password',
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(40, 1, 40, 1),
                        child: Text(
                          "Amount= Rs1200/-",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                    Container(
                        child: Column(children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                          child: TextField(
                            controller: bank,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
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
                              labelText: 'Bank',
                              // errorText: 'Wrong User Name',
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(50, 15, 50, 0),
                          child: Center(
                              child: Text('Bank Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black)))),
                      Container(
                        padding: const EdgeInsets.fromLTRB(1, 1, 0, 15),
                        child: Text(
                          "Required for Refund in case of Withdrawl (ONLY PARENT/SELF)",
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                            controller: nameACHldr,
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
                              labelText: 'Name of the Account Holder',
                              // errorText: 'Wrong User Name',
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                            controller: bankName,
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
                              labelText: 'Bank Name',
                              // errorText: 'Wrong User Name',
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: accNum,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
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
                                labelText: "Account Number",
                                // errorText: 'Wrong Password',
                              ))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                            controller: branchName,
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
                              labelText: 'Branch name',
                              // errorText: 'Wrong User Name',
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: addressOfBank,
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
                                  labelText: "Address of the bank"
                                  // errorText: 'Wrong Password',
                                  ))),
                      Container(
                          padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          child: TextField(
                              controller: ifscCode,
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
                                  labelText: "IFSC Code"
                                  // errorText: 'Wrong Password',
                                  ))),
                      ElevatedButton(
                          onPressed: () {
                            final ddNum1 = ddNum.text;
                            final dob1 = dob.text;
                            final bank1 = bank.text;
                            final nameACHldr1 = nameACHldr.text;
                            final bankName1 = bankName.text;
                            final accNum1 = accNum.text;
                            final branchName1 = branchName.text;
                            final addressOfBank1 = addressOfBank.text;
                            final ifscCode1 = ifscCode.text;

                            var collection = FirebaseFirestore.instance
                                .collection('application');
                            collection
                                .doc(
                                    id) // <-- Doc ID where data should be updated.
                                .update({
                                  'ddNum': ddNum1,
                                  'dob1': dob1,
                                  'bank': bank1,
                                  'nameACHldr': nameACHldr1,
                                  'bankName': bankName1,
                                  'accNum': accNum1,
                                  'branchName': branchName1,
                                  'addressOfBank': addressOfBank1,
                                  'ifscCode': ifscCode1,
                                }) // <-- New data
                                .then((_) => print('Updated'))
                                .catchError(
                                    (error) => print('Update failed: $error'));

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SixthRoute(id: id)));

                            // Navigator.pushReplacementNamed(
                            //ADDED THIS
                            // context,
                            // '/SixthRoute');
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
