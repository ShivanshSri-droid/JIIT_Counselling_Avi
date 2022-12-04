import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jiit_counselling_trial1/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jiit_counselling_trial1/login_controller.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    bool isLoggedIn = false;
    return MaterialApp(
      home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg_image.jpg'),
                  opacity: 0.5,
                  fit: BoxFit.cover)),
          child: Scaffold(
              backgroundColor: Colors.white38,
              appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white60,
                  leading: Image.asset('images/jiit_logo.png'),
                  title: Center(
                      child: Text('Welcome to JIIT',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black)))),
              body: Container(
                  child: SafeArea(
                      child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 80, 40, 30),
                              child: TextFormField(
                                controller: controller.userName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white70),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  labelText: 'User Name',
                                  // errorText: 'Wrong User Name',
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                              child: TextFormField(
                                  obscureText: true,
                                  controller: controller.password,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.white70),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    labelText: 'Password',
                                    // errorText: 'Wrong Password',
                                  )))
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          isLoggedIn = await LoginController.instance.loginUser(
                              controller.userName.text.trim(),
                              controller.password.text.trim());
                        }
                        if (isLoggedIn) {
                          Navigator.pushNamed(context, '/second');
                        }
                      },
                      child: Center(
                          widthFactor: 1,
                          heightFactor: 1,
                          child: Text(
                            'Sign In',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )))
                ],
              ))))),
    );
  }
}
