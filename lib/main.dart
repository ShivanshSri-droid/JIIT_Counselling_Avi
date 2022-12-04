import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:jiit_counselling_trial1/firebase_options.dart';
import 'homeRoute.dart';
import 'secondRoute.dart';
import 'thirdRoute.dart';
import 'fourthRoute.dart';
import 'FifthRoute.dart';
import 'SixthRoute.dart';
import 'SeventhRoute.dart';
import 'EightRoute.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      // '/FourthRoute': (context) => const FourthRoute(),
      // '/FifthRoute': (context) => const FifthRoute(),
      // '/SixthRoute': (context) => const SixthRoute(),
      '/SeventhRoute': (context) => const SeventhRoute(),
      '/EightRoute': (context) => const EightRoute(),
    },
  ));
}
