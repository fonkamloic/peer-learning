import 'package:flutter/material.dart';
import 'file:///home/fl/Dropbox/github_projects/FlutterProject/peer-learning-app/lib/screens/LoadingScreen.dart';
import 'package:pl_learning/screens/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }
}
