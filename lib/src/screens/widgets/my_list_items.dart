import 'package:first_one_flutter/src/screens/fourth_screen.dart';
import 'package:first_one_flutter/src/screens/home_screen.dart';
import 'package:first_one_flutter/src/screens/second_screen.dart';
import 'package:first_one_flutter/src/screens/thirs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          borderOnForeground: true,
          color: Colors.pink,
          elevation: 10,
         margin: EdgeInsets.all(8.0),
              child: ListTile(
                 leading: Icon(Icons.app_blocking_rounded) ,
                title: Text('Home Screen',style: GoogleFonts.pacifico(fontSize: 20),),
                 onTap : (){
                  // Navigator.of(context).pushNamed('/');
                   // ignore: avoid_types_as_parameter_names
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
                        return HomeScreen() ;
                   }));
                 },
              ),
        ),
       
                Card(
                   borderOnForeground: true,
          color: Colors.pink,
          elevation: 10,
         margin: EdgeInsets.all(8.0),
              child: ListTile(
                 leading: Icon(Icons.app_blocking_outlined) ,
                title: Text('Second Screen',style: GoogleFonts.pacifico(fontSize: 20),),
                onTap : (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
                        return SecondScreen() ;
                   }));
                },
              )
                ),
                Card(
                   borderOnForeground: true,
          color: Colors.pink,
          elevation: 10,
         margin: EdgeInsets.all(8.0),
              child: ListTile(
                 leading: Icon(Icons.app_blocking_sharp) ,
                title: Text('Thrid Screen',style: GoogleFonts.pacifico(fontSize: 20),),
                 onTap : (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
                        return ThirdScreen() ;
                   }));
                 },
              )
                ),
                Card(
                   borderOnForeground: true,
          color: Colors.pink,
          elevation: 10,
         margin: EdgeInsets.all(8.0),
              child: ListTile(
                 leading: Icon(Icons.app_blocking) ,
                title: Text('Fourth Screen',style: GoogleFonts.pacifico(fontSize: 20),),
                 onTap : (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
                        return FourthScreen() ;
                   }));
                 },
              )
                ),
      ],
    );
  }
}