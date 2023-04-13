import 'package:flutter/material.dart';

// DEPENDENCIES

//SCREENS
import 'screens/sing_up/SignUp.dart';
import './features/access_Butons/BottomBar.dart';

void main() => runApp(MaterialApp(title: 'Welcome', home: MyApp()));

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // VARIABLES
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.deepOrange,
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/abexa-icon.png',
                      width: 200,
                      height: 80,
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Container(
                          padding: const EdgeInsets.only(bottom: 48, top: 12),
                          child: const Text(
                            "Please sign in to continue",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        )),
                        Center(
                          child: Container(
                            width: 320,
                            height: 88,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Ingrese su Email",
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 320,
                            height: 88,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 46)),
                        Container(
                          padding:
                              const EdgeInsets.only(bottom: 16.0, top: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomBar()),
                              );
                            },
                            child: Text("Sign in"),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 18.0),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 38),
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 217, 215, 215),
                          letterSpacing: 0.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
