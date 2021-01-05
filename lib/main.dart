import 'package:flutter/material.dart';
import 'package:globapp/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlobApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SetingsScreen(),
    );
  }
}