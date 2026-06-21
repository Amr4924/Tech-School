import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 215, 215),

      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),

        title: Text(
          "Notifications",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "No notifications",
              style: const TextStyle(
                color: Color.fromARGB(103, 0, 0, 0),
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
