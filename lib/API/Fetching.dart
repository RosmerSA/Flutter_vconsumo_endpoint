import 'dart:async';
import 'dart:convert';

import '../features/card_api/CardApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final String url = "https://mobilegps.abexacloud.com/sw/cargarEmpresas/";

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String codeEmpresa;
  final String nomEmpresa;

  const Album({
    required this.codeEmpresa,
    required this.nomEmpresa,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      codeEmpresa: json[url[0][0]],
      nomEmpresa: json[url[0][1]],
    );
  }
}

// WIDGET DE EJEMPLO PARA USO DE FETCHING

void main() => runApp(const MyAppFetch());

class MyAppFetch extends StatefulWidget {
  const MyAppFetch({super.key});

  @override
  State<MyAppFetch> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppFetch> {
  late Future<Album> futureAlbum;
  late Future<CardApi> cardApi;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.nomEmpresa);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
