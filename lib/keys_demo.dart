import 'package:flutter/material.dart';
import 'package:flutter_widgets/color_statefull_widget.dart';

class KeysDemo extends StatefulWidget {
  const KeysDemo({Key? key}) : super(key: key);

  @override
  State<KeysDemo> createState() => _KeysDemoState();
}

class _KeysDemoState extends State<KeysDemo> {
  List<Widget>? widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      Padding(
        // always use key in top widget in the tree
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: ColorWidget(
          data: "First",
        ),
      ),
      Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: ColorWidget(
          data: "Second",
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: widgets ?? [],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
            hoverColor: Colors.redAccent,
            elevation: 16.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onPressed: () {
              swpap();
            },
            label: Text("data"),
            icon: Icon(Icons.cameraswitch)),
      ),
    );
  }

  void swpap() {
    setState(() {
      widgets?.insert(1, widgets!.removeAt(0));
    });
  }
}
