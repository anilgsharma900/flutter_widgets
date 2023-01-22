import 'package:flutter/material.dart';
import 'package:flutter_widgets/statefull_widget_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: statefulDemo(),
    );
  }
}
