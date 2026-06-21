import 'package:app2/mainScreen.dart';
import 'package:flutter/material.dart';

/*
        ------ Login screen ------

    1- Data verification
    2- Providing hints to help the user log in
    3- Modern design and attractive shape

 */

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hiddenPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final String userName = "Amr Saad"; // <-- Change the display name -->
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          SizedBox(height: 80),
          // ------ Screen Title ------
          Center(
            child: Text(
              "Login",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),

          // ------ View login content ------
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,

                // ------ Give BorderRadius from the top north of the container ------
                borderRadius: BorderRadius.only(topLeft: Radius.circular(110)),
              ),
              child: ListView(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "Welcome",
                      style: const TextStyle(
                        color: Colors.purple,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // ------ The part responsible for data transmission and validation ------
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // ------------- Email Lebal ----------
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            autofocus:
                                true, // <-- Focusing on the right is automatic
                            controller: emailController,

                            // -------- Email validator section --------
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return "The field is empty";
                              }
                              if (value != null && !value.contains('@')) {
                                return "Invalid email format";
                              }
                              return null;
                            },

                            // -------- Field style part --------
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "email@gmail.com",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),
                        ),

                        // ------------- Paswword Lebal ----------
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: hiddenPassword,

                            // -------- Password validator section --------
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return "The field is empty";
                              } else if (value != null && value.length < 8) {
                                return "The minimum password length is (8) characters.";
                              }
                              return null;
                            },

                            // -------- Field style part --------
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "********",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Icon(Icons.lock_outline_rounded),

                              // -------- Hide password icon --------
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hiddenPassword = !hiddenPassword;
                                  });
                                },
                                icon: Icon(
                                  hiddenPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // -------- Login button --------
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              onPressed: () {
                                // -------- Check if it will return something or is null --------
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainScreen(
                                        userEmail: emailController.text,
                                        userName: userName,
                                      ),
                                    ),
                                  );

                                  // -------- If something is returned, an error message will appear. --------
                                } else {
                                  SnackBar snackBar = SnackBar(
                                    backgroundColor: Colors.purple,
                                    content: Text(
                                      "Please review your information carefully.",
                                    ),
                                    action: SnackBarAction(
                                      label: "Okay",
                                      onPressed: () {},
                                    ),
                                    duration: Duration(seconds: 2),
                                  );
                                  ScaffoldMessenger.of(
                                    context,
                                  ).showSnackBar(snackBar);
                                }
                              },
                              child: Text("Login"),
                            ),
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
    );
  }
}
