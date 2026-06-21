import 'package:flutter/material.dart';
import 'home.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({
    super.key,
    required this.urlPhoto,
    required this.userName,
    required this.userEmail,
  });
  final String urlPhoto;
  final String userName;
  final String userEmail;
  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  // ignore: non_constant_identifier_names
  List<Map<String, Object>> Prodact = [
    {
      "img":
          "https://i.pinimg.com/1200x/52/19/d9/5219d9b3f4606ed553479e91b2b9b8d2.jpg",
      "title": "Full Stack",
      "category": "Web",
      "price": 3500, // تراك ضخم وشامل فرونت وإيجاد باكيند
    },
    {
      "img":
          "https://i.pinimg.com/736x/5c/e0/91/5ce0912c11d3c86541bced2909523f49.jpg",
      "title": "Mean Stack",
      "category": "Web",
      "price": 3200, // تراك كامل يعتمد على جافا سكريبت
    },
    {
      "img":
          "https://i.pinimg.com/1200x/8a/77/35/8a7735e0c7393e05e91f375ffd16878d.jpg",
      "title": "Front End",
      "category": "Web",
      "price": 2000, // جزء من التراك الكامل
    },
    {
      "img":
          "https://i.pinimg.com/1200x/68/b0/65/68b065a86ecb4df84be6dada37079d8c.jpg",
      "title": "Back End",
      "category": "Web",
      "price": 2200, // عادة أغلى قليلاً من الفرونت بسبب مفاهيم السيرفرات
    },
    {
      "img":
          "https://i.pinimg.com/736x/03/89/85/038985bc5a7d1478f80666451408ece8.jpg",
      "title": "Flutter",
      "category": "Cross",
      "price": 2500, // تراك كامل لبرمجة الموبايل ومطلوب جداً
    },
    {
      "img":
          "https://i.pinimg.com/736x/d4/27/0f/d4270fe93d94e0c0ccaf49b93a96ac07.jpg",
      "title": "React Native",
      "category":
          "Cross", // تم تعديل الحرف الأول ليكون Capital متناسق مع الباقي
      "price": 2400,
    },
    {
      "img":
          "https://i.pinimg.com/736x/bf/f6/92/bff692e4cdd65fffc34183f9c04f4489.jpg",
      "title": "Kotlin",
      "category": "Mobile",
      "price": 1800, // كورس تطوير نيتيف (مستوى متقدم)
    },
    {
      "img":
          "https://i.pinimg.com/736x/07/f0/77/07f0770e23824b430b12c8949c96776e.jpg",
      "title": "Swift",
      "category": "Mobile",
      "price": 1900,
    },
    {
      "img":
          "https://i.pinimg.com/736x/65/9b/22/659b224c8c69c7c151094a9c9e740ccb.jpg",
      "title": "MongoDB",
      "category": "Database",
      "price": 1200, // كورس تخصصي في جزئية معينة يكون سعره أقل
    },
    {
      "img":
          "https://i.pinimg.com/1200x/41/fc/6e/41fc6ec3d7ce8d64bf8bc3d6b32dfc58.jpg",
      "title": "Docker",
      "category": "DevOps",
      "price": 1400, // أداة تخصصية للمحترفين
    },
    {
      "img":
          "https://i.pinimg.com/736x/06/64/bc/0664bca899a789577effe2000b8cb09e.jpg",
      "title": "Cyber Security",
      "category": "Sec",
      "price": 2800, // مجالات الأمن السيبراني تكون مرتفعة الثمن لأهميتها
    },
    {
      "img":
          "https://i.pinimg.com/736x/87/6b/bb/876bbbdc83de2979d1463cde17d6b6d1.jpg",
      "title": "Java",
      "category": "Code",
      "price": 1000, // لغات البرمجة الأساسية (تأسيس) سعرها موحد ومنخفض نسبياً
    },
    {
      "img":
          "https://i.pinimg.com/736x/e5/1c/c6/e51cc61a48de6d8fb214755c85fa7c18.jpg",
      "title": "C++",
      "category": "Code",
      "price": 1000,
    },
    {
      "img":
          "https://i.pinimg.com/736x/ea/17/74/ea17747540bc9f6c79190f6bec34da2c.jpg",
      "title": "C#",
      "category": "Code",
      "price": 1000,
    },
    {
      "img":
          "https://i.pinimg.com/736x/85/53/95/8553958ef7e528ed50e76246fb51bce4.jpg",
      "title": "Dart",
      "category": "Code",
      "price": 800, // لغة برمجة خفيفة ومباشرة قبل الـ Flutter
    },
    {
      "img":
          "https://i.pinimg.com/1200x/d3/a5/dd/d3a5dd971525531e98eea818e002c276.jpg",
      "title": "Python",
      "category": "Code",
      "price": 1100,
    },
  ];
  List<String> categories = [
    "All",
    "Web",
    "Moble App",
    "Front End",
    "Back End",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(87, 216, 213, 213),
      drawer: buildDrawer(
        url: widget.urlPhoto,
        email: widget.userEmail,
        name: widget.userName,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          "Courses",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark, color: Colors.yellowAccent),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildSeartch(),
          SizedBox(height: 20),
          buildAdvertisingCard(context: context),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildFillterButtons(cat: categories, indx: index);
              },
            ),
          ),
          SizedBox(height: 20),
          _buidlCourseContentCard(context: context, Prodact: Prodact),
        ],
      ),
    );
  }
}

// ----- Build Drawwer --------
Widget buildDrawer({
  required String url,
  required String name,
  required String email,
}) {
  return Drawer(
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(radius: 90, backgroundImage: NetworkImage(url)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(Icons.person),
            trailing: Icon(
              Icons.circle,
              color: const Color.fromARGB(255, 71, 255, 77),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              email,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(Icons.email_rounded),
          ),
        ),
        Divider(height: 20),
        buildBottonsDrawer(icon: Icons.settings, title: "Settings"),
        buildBottonsDrawer(icon: Icons.support, title: "Help & Support"),
        buildBottonsDrawer(
          icon: Icons.receipt_long,
          title: "Purchase History",
        ),
        Divider(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Follow us on",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            buildIconSocial(icon: Icons.facebook),
            buildIconSocial(icon: Icons.camera_alt),
            buildIconSocial(icon: Icons.alternate_email ),
          ],
        ),
      ],
    ),
  );
}

Widget buildIconSocial({required IconData icon}) {
  return Expanded(
    child: InkWell(
      onTap: () {},
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 40)),
    ),
  );
}

Widget buildBottonsDrawer({required String title, required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(icon),
      ),
    ),
  );
}

// ----- Build Advertising Card --------
Widget buildAdvertisingCard({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: const Color(0xFFF3E5F5),
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
      child: Column(),
    ),
  );
}

// ----- Build Fillter Buttons --------
Widget _buildFillterButtons({required List<String> cat, required int indx}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 20,
        decoration: BoxDecoration(
          color: indx == 0 ? Colors.purpleAccent : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            cat[indx],
            style: TextStyle(
              color: indx == 0 ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}

// ----- Build Course Content Card--------

Widget _buidlCourseContentCard({
  required BuildContext context,
  // ignore: non_constant_identifier_names
  required List<Map<String, Object>> Prodact,
}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF4A148C).withValues(alpha: 0.06),
          blurRadius: 20,
          spreadRadius: 2,
          offset: const Offset(0, 8),
        ),
      ],
    ),
    child: GridView.builder(
  physics: const NeverScrollableScrollPhysics(),
  shrinkWrap: true,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.60, 
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: Prodact.length,
  itemBuilder: (BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0), 
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                Prodact[index]['img'] as String,
                height: 120, 
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Text(
                      Prodact[index]["title"] as String,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, 
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4), 
                  
                  // 2. الـ Category Tag
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      Prodact[index]["category"] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // الـ Row الثاني: السعر
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                children: [
                  Text(
                    "Price: ${Prodact[index]["price"] as int} L.E.",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
            const Spacer(), 

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40, 
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Enroll Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
)
  );
}
