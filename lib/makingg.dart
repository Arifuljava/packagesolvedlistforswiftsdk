
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toastify/components/enums.dart';
import 'package:flutter_toastify/flutter_toastify.dart';
class Making extends StatefulWidget {
  const Making({super.key});

  @override
  State<Making> createState() => _MakingState();
}

class _MakingState extends State<Making> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterToastify Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterToastify.success(
                width: 360,
                notificationPosition: NotificationPosition.topLeft,
                animation: AnimationType.fromTop,
                title: const Text('Güncelleme'),
                description: const Text('Verileriniz güncellendi'),
                onDismiss: () {},
              ).show(context);
            },
            child: Text('Bildirim Göster'),
          ),
        ),
      ),
    );
  }
}

