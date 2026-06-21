// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, String>> content = [
    {
      "title": "Start Your Coding Journey",
      "description":
          "Learn programming step by step and build a strong foundation for creating real-world applications.",
      "imgUrl": "assets/img1.png",
    },
    {
      "title": "Build Modern Mobile Apps",
      "description":
          "Transform your ideas into beautiful and responsive mobile applications using modern development tools.",
      "imgUrl": "assets/img2.png",
    },
    {
      "title": "Turn Ideas Into Reality",
      "description":
          "Create projects, improve your skills, and bring your innovative ideas to life through technology.",
      "imgUrl": "assets/img3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildOnboardingScreen(
            title: content[0]["title"] as String,
            subtitle: content[0]["description"] as String,
            url: content[0]["imgUrl"] as String,
            context: context,
          ),
          _buildOnboardingScreen(
            title: content[1]["title"] as String,
            subtitle: content[1]["description"] as String,
            url: content[1]["imgUrl"] as String,
            context: context,
          ),
          _buildOnboardingScreen(
            title: content[2]["title"] as String,
            subtitle: content[2]["description"] as String,
            url: content[2]["imgUrl"] as String,
            context: context,
          ),
        ],
      ),
    );
  }
}


// ------ Build On Border Screen --------
Widget _buildOnboardingScreen({
  required String url,
  required String title,
  required String subtitle,
  required context,
}) {
  return Container(
    color: Colors.white,
    child: ListView(
      children: [
        SizedBox(height: 150),
        // ---- Import images from app files ------
        Center(child: Image.asset(url, height: 250)),
        SizedBox(height: 70),
        SizedBox(
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),

        // ---- Finish on border and proceed directly to login ----
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                //Go to the login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),

                // ---- Jump button style ----
                child: Center(
                  child: Text(
                    "Get Started",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
