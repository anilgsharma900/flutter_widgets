import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({Key? key}) : super(key: key);

  @override
  State<RowColumnWidget> createState() => _RowColumnWidgetState();
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  bool doubleClickToExit = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Row And Column"),
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("First Name 1"),
              const SizedBox(
                height: 4.0,
              ),
              const Text("First Name 2"),
              const SizedBox(
                height: 4.0,
              ),
              const Text("First Name 3"),
              const SizedBox(
                height: 4.0,
              ),
              const Text("First Name 4"),
              const Text("First Name 5"),
              const SizedBox(
                height: 4.0,
              ),
              const Text("First Name 6"),
              const Text("First Name 7"),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.amber,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
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
          return true;
        }
        doubleClickToExit = true;
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Double click to exit")));

        Future.delayed(const Duration(seconds: 2), () {
          doubleClickToExit = false;
        });

        return false;
      },
    );
  }
}
