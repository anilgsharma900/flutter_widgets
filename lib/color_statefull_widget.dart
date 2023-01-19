import 'dart:math';

import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  const ColorWidget({Key? key, this.data}) : super(key: key);
  final String? data;

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  Color? color;

  @override
  void initState() {
    super.initState();
    color = Colors.primaries[(Random().nextInt(Colors.primaries.length))];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Center(child: Text(widget.data ?? "")),
    );
  }
}
