import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(title: 'Navigation Basics', home: SigninPage()));

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Center(
          child: Text('HOME'),
        ),
        // ACA TRAER BOTTOM BAR
      ),
    );
  }
}
