import 'dart:convert';
import 'dart:math';

import 'package:first_one_flutter/models/photo.dart';
import 'package:first_one_flutter/src/screens/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class FourthScreen extends StatefulWidget {
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  final List<String> imageList = [
// "https://picsum.photos/id/900/800/800.jpg" ,
// "https://picsum.photos/id/800/800/800.jpg" ,
// "https://picsum.photos/id/700/800/800.jpg" ,
// "https://picsum.photos/id/600/800/800.jpg" ,
// "https://picsum.photos/id/500/800/800.jpg" ,
// "https://picsum.photos/id/400/800/800.jpg" ,
// "https://picsum.photos/id/300/800/800.jpg" ,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Fourth Screen', style: GoogleFonts.pacifico()),
      ),
      body: Center(
        child: imageList.length > 0
            ? Container(
                child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMyList(imageList[index]);
                  },
                ),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _addPhoto();
          }),
    );
  }

  Widget _buildMyList(String img) {
    return Card(
        child: Container(
            //wrap content for screen
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 10),
            child: Image.network(img)));
  }

  _addPhoto() async {
    var num = Random().nextInt(1000);
    final responce = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/${num}'));

    final parsedJson = jsonDecode(responce.body);

    var photo = Photo(
        albumId: parsedJson['albumId'],
        id: parsedJson['id'],
        title: parsedJson['title'],
        url: parsedJson['url'],
        thumbnailUrl: parsedJson['thumbnailUrl']);
    //refresh UI after making logic code
    setState(() {
      imageList.add(photo.url);
    });
    print(imageList.length);
  }
}
