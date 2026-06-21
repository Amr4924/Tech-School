import 'package:app2/nav_bar/courses.dart';
import 'package:app2/nav_bar/home.dart';
import 'package:app2/nav_bar/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    this.photoUrl,
    required this.userEmail,
    required this.userName,
  });
  final String userEmail;
  final String userName;
  final String? photoUrl;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;
  void changeIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }
  List<Widget> get pages => [
    HomeScreen(
      UserName: widget.userName,
      urlPhoto:
          widget.photoUrl ??
          "https://i.pinimg.com/736x/50/88/12/50881235e972feea21d85fc46bb5e301.jpg",
      userEmail: widget.userEmail,
      onProfileTap: () => changeIndex(2),
    ),
    CoursesScreen(
      urlPhoto:
          widget.photoUrl ??
          "https://i.pinimg.com/736x/50/88/12/50881235e972feea21d85fc46bb5e301.jpg",
          userEmail: widget.userEmail,
          userName:widget.userName,
    ),
    ProfileScreen(
      userEmail: widget.userEmail,
      userName: widget.userName,
      urlPhoto:
          widget.photoUrl ??
          "https://i.pinimg.com/736x/50/88/12/50881235e972feea21d85fc46bb5e301.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: selectIndex,
        onTap: changeIndex,

        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Courses", icon: Icon(Icons.school)),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
