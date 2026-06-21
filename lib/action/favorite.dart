import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 215, 215),

      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Favorites",
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
              "No Favorite",
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
