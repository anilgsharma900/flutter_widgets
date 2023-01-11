import 'package:flutter/material.dart';
import 'package:flutter_widgets/row_column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RowColumnWidget(),
    );
  }
}
