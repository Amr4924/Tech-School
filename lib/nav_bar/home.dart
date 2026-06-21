import 'package:flutter/material.dart';
import 'courses.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const HomeScreen({
    super.key,
    // ignore: non_constant_identifier_names
    required this.UserName,
    required this.urlPhoto,
    required this.userEmail,
    required this.onProfileTap,
  });
  // ignore: non_constant_identifier_names
  final String UserName;
  final String urlPhoto;
  final String userEmail;
  final VoidCallback onProfileTap;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imgProgrammingpaths = [
    "https://i.pinimg.com/736x/23/e5/f5/23e5f5b9b99af69f7209ab7e96b37f26.jpg",
    "https://i.pinimg.com/1200x/ff/63/64/ff63647c9e20f66444674a31e906df24.jpg",
    "https://i.pinimg.com/736x/5d/5b/d9/5d5bd9905af8b53693f1e80a672e93e1.jpg",
    "https://i.pinimg.com/1200x/28/6b/18/286b18e2d80b42abe26f019348db004a.jpg",
    "https://i.pinimg.com/736x/c6/8e/0c/c68e0cd2596425c56f278cf0dbbd3d5d.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(87, 216, 213, 213),
      drawer: buildDrawer(
        url: widget.urlPhoto,
        email: widget.userEmail,
        name: widget.UserName,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          "Hello ${widget.UserName.split(" ").first} 👋",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.amberAccent),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                widget.onProfileTap();
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(widget.urlPhoto),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildSeartch(),
          buildAdvertisingCard(context: context),
          SizedBox(height: 20),
          _buildProgressHome(context: context),
          SizedBox(height: 30),
          Center(
            child: Text(
              "Programming paths",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF4A148C).withValues(alpha: 0.06),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgProgrammingpaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: _buildIconProgrammingpaths(
                      url: imgProgrammingpaths,
                      indx: index,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// ----- Build Search bar --------
Widget buildSeartch() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
      ),
    ),
  );
}

// ----- Build Progressbar --------
Widget _buildProgressHome({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4A148C).withValues(alpha: 0.06),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your Progress",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildLinearProgress(
              lng: "C++",
              progress: "90%",
              valueProgress: 0.9,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildLinearProgress(
              lng: "Pyhone",
              progress: "70%",
              valueProgress: 0.7,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildLinearProgress(
              lng: "C#",
              progress: "50%",
              valueProgress: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildLinearProgress(
              lng: "Dart",
              progress: "40%",
              valueProgress: 0.4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildLinearProgress(
              lng: "Flutter",
              progress: "30%",
              valueProgress: 0.3,
            ),
          ),
        ],
      ),
    ),
  );
}

// ----- Build Icon Programming paths --------
Widget _buildIconProgrammingpaths({
  required List<String> url,
  required int indx,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(radius: 55, backgroundImage: NetworkImage(url[indx])),
  );
}
