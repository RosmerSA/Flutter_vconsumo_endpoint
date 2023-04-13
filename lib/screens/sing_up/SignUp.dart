import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_rosmer/screens/signin-page/SigninPage.dart';
import 'package:login_rosmer/screens/sing_up/SignUp.dart';
import '../../features/access_Butons/BottomBar.dart';

import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(title: 'Navigation Basics', home: SignUp()));

class SignUp extends StatelessWidget {
  SignUp({super.key});

  // VARIABLES
  final TextEditingController nombresController = TextEditingController();
  final TextEditingController apellidosController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: Center(
          child: Container(
            // CAMBIAR COMPORTAMIENTO DEL WIDTH
            alignment: Alignment.center,
            decoration: BoxDecoration(
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
                  Container(
                    width: 320,
                    height: 88,
                    child: TextField(
                      controller: nombresController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Ingrese sus nombres",
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 88,
                    child: TextField(
                      controller: apellidosController,
                      decoration: InputDecoration(
                        hintText: "Ingrese sus Apellidos",
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 88,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Ingrese su email",
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 88,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Ingrese su contraseña",
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 88,
                    child: TextField(
                      controller: password2Controller,
                      decoration: InputDecoration(
                        hintText: "Repita la contraseña",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomBar()),
                      );
                    },
                    child: const Text("Crear usuario"),
                  ),
                ],
              ),
            ),
          ),
        ),
        // ACA TRAER BOTTOM BAR
      ),
    );
  }
}
