import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:obtection/screen/home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

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
      home: HomePage(title: 'Obtection', cameras: cameras),
    );
  }
}

