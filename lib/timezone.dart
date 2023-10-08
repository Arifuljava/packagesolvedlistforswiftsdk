
import 'package:flutter/material.dart';

class ShowDate extends StatefulWidget {
  const ShowDate({super.key});

  @override
  State<ShowDate> createState() => _ShowDateState();
}

class _ShowDateState extends State<ShowDate> {
  @override
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();
    String formattedTime = "${currentTime.hour}:${currentTime.minute}:${currentTime.second}";
    String formattedDate = "${currentTime.year}-${currentTime.month}-${currentTime.day}";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Current Time and Date Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Time:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                formattedTime,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Current Date:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                formattedDate,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
