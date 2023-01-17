import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({Key? key}) : super(key: key);

  @override
  State<RowColumnWidget> createState() => _RowColumnWidgetState();
}

/// Column vertical
// enter name
// enter password
//button

///Row  horizontal
// enter name     enter password       button

class _RowColumnWidgetState extends State<RowColumnWidget> {
  bool doubleClickToExit = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Row And Column"),
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("First Name 1"),
              const SizedBox(
                height: 4.0,
              ),
              Text("First Name 2"),
              SizedBox(
                height: 4.0,
              ),
              Text("First Name 3"),
              const SizedBox(
                height: 4.0,
              ),
              Text("First Name 4"),
              Text("First Name 5"),
              const SizedBox(
                height: 4.0,
              ),
              Text("First Name 6"),
              Text("First Name 7"),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.amber,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("First Name"),
                    Text("Last Name"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onWillPop: () async {
        if (doubleClickToExit) {
          MethodChannel("").invokeMethod("");
          return true;
        }
        doubleClickToExit = true;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Double click to exit")));

        Future.delayed(const Duration(seconds: 2), () {
          doubleClickToExit = false;
        });

        return false;
      },
    );
  }
}
