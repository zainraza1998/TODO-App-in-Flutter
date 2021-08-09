import 'package:flutter/material.dart';
import 'package:todoapp/cal.dart';
import 'package:todoapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.yellow,
        accentColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: Calculator(),
    );
  }
}
