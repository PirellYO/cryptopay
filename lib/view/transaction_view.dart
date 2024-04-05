import 'package:flutter/material.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 84, 85),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          "History",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
