// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildOnboardingScreen(
            title: "Start Your Coding Journey",
            subtitle:
                "Learn programming step by step and build a strong foundation for creating real-world applications.",
            url: "assets/img1.png",
            context: context,
          ),
          _buildOnboardingScreen(
            title: "Build Modern Mobile Apps",
            subtitle:
                "Transform your ideas into beautiful and responsive mobile applications using modern development tools.",
            url: "assets/img2.png",
            context: context,
          ),
          _buildOnboardingScreen(
            title: "Turn Ideas Into Reality",
            subtitle:
                "Create projects, improve your skills, and bring your innovative ideas to life through technology.",
            url: "assets/img3.png",
            context: context,
          ),
        ],
      ),
    );
  }
}

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

        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
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
