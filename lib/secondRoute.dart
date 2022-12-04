import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            leading: Image.asset('images/jiit_logo.png'),
            title: Center(
                child: Text('Welcome to JIIT',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black)))),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: Text(
                'Scan this QR code at the scanner to start the admission process',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 50),
              child: Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/jiit-counselling-62.appspot.com/o/Shivansh.png?alt=media&token=176af27a-3d42-46fd-895e-a22d4ae2ebf6'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                child: Center(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Text(
                      'Next Page',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ))),
          ],
        )),
      ),
    );
  }
}
