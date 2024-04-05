import 'package:crypto_pay/view/QR_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed('/notification_view');
                },
                child: const Icon(
                  Icons.notifications,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 340,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return QRView(key: UniqueKey());
                    },
                  );
                },
                child: const Icon(
                  Icons.qr_code,
                  size: 33,
                ),
              )
            ],
          ),
          const Text(
            "0.00 USDT",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Text(
            "0.00BTC",
            style: TextStyle(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.call_received),
                  ),
                  Text("Recieve"),
                ],
              ),
              SizedBox(
                width: 120,
              ),
              Column(
                children: [
                  CircleAvatar(
                    child: Icon(CupertinoIcons.bag),
                  ),
                  Text("Buy"),
                ],
              ),
              SizedBox(
                width: 120,
              ),
              Column(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.send_sharp),
                  ),
                  Text("Send"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: "Search any token",
            ),
          ),
          //List of coins will appear here using the API
        ],
      ),
    );
  }
}
