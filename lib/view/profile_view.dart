import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              //image adding functionality here
            },
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 235, 235),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(
                        Icons.edit,
                        size: 22,
                        color: Color.fromARGB(255, 85, 83, 83),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {
                Get.toNamed('/transaction_view');
              },
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Referral'),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Support'),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.star_border),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
