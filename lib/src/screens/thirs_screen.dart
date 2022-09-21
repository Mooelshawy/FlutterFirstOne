import 'package:first_one_flutter/models/photo_list.dart';
import 'package:first_one_flutter/src/screens/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../models/photo.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Third Screen', style: GoogleFonts.pacifico()),
      ),
      body: Center(
          child: FutureBuilder(
              //method create connection for  featch data
              future: fetchData(),
              builder: (BuildContext context, AsyncSnapshot snapShot) {
                return snapShot.hasData
                    ? PhotoList(photos: snapShot.data)
                    : CircularProgressIndicator();
              })),
    );
  }
}

Future<List<Photo>> fetchData() async {
  final responce =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  final responceBody = responce.body;

  return compute(parsedData, responceBody);
}

List<Photo> parsedData(String responceBody) {
  final parsed = json.decode(responceBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}
