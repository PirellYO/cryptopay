import 'package:flutter/material.dart';

class QRView extends StatefulWidget {
  const QRView({super.key});

  @override
  State<QRView> createState() => _QRViewState();
}

class _QRViewState extends State<QRView> {
  String selectedCrypto = 'Bitcoin';
  String address = "btdhjkhkdflfdhlldf";

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(255, 231, 220, 220),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: selectedCrypto,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCrypto = newValue!;
                      generateQRCode(selectedCrypto);
                    });
                  },
                  items: <String>['Bitcoin', 'Ethereum', 'Litecoin', 'Kucoin']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Scan QR Code to send $selectedCrypto',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  address,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.copy),
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Send only $selectedCrypto to this address, otherwise assets will be lost.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void generateQRCode(String crypto) {}
}
