import 'package:flutter/material.dart';

class ShowToasst extends StatefulWidget {
  const ShowToasst({super.key});

  @override
  State<ShowToasst> createState() => _ShowToasstState();
}

class _ShowToasstState extends State<ShowToasst> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Toast Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Clikce");
              showCustomToast(context, 'This is a custom toast message');
            },
            child: Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}

void showCustomToast(BuildContext context, String message) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2), // Adjust the duration as needed
    ),
  );
}
