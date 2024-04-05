import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 84, 85),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          "Notification",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
