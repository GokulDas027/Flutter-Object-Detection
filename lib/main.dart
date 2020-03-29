import 'package:flutter/material.dart';
import 'package:obtection/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // project title
      title: 'Obtection',
      // project theme
      theme: ThemeData(
        primarySwatch: Colors.amber,
        secondaryHeaderColor: Colors.amberAccent,
      ),
      home: HomePage(title: 'Obtection'),
    );
  }
}

