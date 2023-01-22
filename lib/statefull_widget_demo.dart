import 'package:flutter/material.dart';

class StatefulDemoWidget extends StatefulWidget {
  const StatefulDemoWidget({Key? key, this.isVisible = false}) : super(key: key);
  final bool? isVisible;

  @override
  State<StatefulDemoWidget> createState() => _StatefulDemoWidgetState();
}

class _StatefulDemoWidgetState extends State<StatefulDemoWidget> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Center(child: Text("counter : $counter")))),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(StatefulDemoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isVisible != oldWidget.isVisible) {
      _init();
    }
  }

  void _init() {}
}
