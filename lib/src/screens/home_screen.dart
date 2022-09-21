import 'package:first_one_flutter/src/screens/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer() ,
      appBar: AppBar(
        title: Text( 'New Test App Flutter' ,style: GoogleFonts.pacifico()),
      ),

      body: Center(
        child: Text(
          'Home Screen',
          style: GoogleFonts.pacifico(fontSize: 48),
        ),
      ),
    );
  }
}