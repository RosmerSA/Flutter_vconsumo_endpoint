import 'package:flutter/material.dart';
import '../../API/Fetching.dart';

void main() =>
    runApp(MaterialApp(title: 'Navigation Basics', home: CrudPage()));

class CrudPage extends StatelessWidget {
  CrudPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CRUD'),
        ),
        body: Center(
            //AGREGAR CARD API

            ),
      ),
    );
  }
}
