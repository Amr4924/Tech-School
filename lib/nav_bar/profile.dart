import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.userEmail,
    required this.userName,
    required this.urlPhoto,
  });
  final String userEmail;
  final String userName;
  final String urlPhoto;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Account",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(height: 40),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings",style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),)),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.support),
              title: Text("Help and support",style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              leading: Icon(Icons.logout),
              title: Text("Log Out",style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          "Profile",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildCardProfile(
            context: context,
            url: widget.urlPhoto,
            email: widget.userEmail,
            name: widget.userName,
          ),
          SizedBox(height: 20),
          _buildProgress(),
        ],
      ),
    );
  }
}

Widget _buildCardProfile({
  required BuildContext context,
  required String url,
  required String email,
  required String name,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Student data",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(url),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 3),
                          Expanded(
                            child: ListTile(
                              title: Text(name),
                              leading: Icon(Icons.person),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(email),
                              leading: Icon(Icons.email),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text("+20 11 1234678"),
                              leading: Icon(Icons.phone),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildProgress() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Progress",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildLinearProgress(
              lng: "C++",
              progress: "90%",
              valueProgress: 0.9,
            ),
            buildLinearProgress(
              lng: "Pyhon",
              progress: "70%",
              valueProgress: 0.7,
            ),
            buildLinearProgress(
              lng: "C#",
              progress: "50%",
              valueProgress: 0.5,
            ),
            buildLinearProgress(
              lng: "Dart",
              progress: "40%",
              valueProgress: 0.4,
            ),
            buildLinearProgress(
              lng: "Flutter",
              progress: "30%",
              valueProgress: 0.3,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildLinearProgress({
  required String lng,
  required String progress,
  required double valueProgress,
}) {
  return Column(
    children: [
      SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(lng, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(progress, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      SizedBox(height: 8),
      LinearProgressIndicator(
        color: Colors.purple,
        value: valueProgress,
        minHeight: 8,
        borderRadius: BorderRadius.circular(20),
      ),
    ],
  );
}
