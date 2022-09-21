import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_list_items.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Theme.of(context).backgroundColor ,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('omran'), 
                accountEmail: Text('www.omranelshawy@gmail.com'),
                currentAccountPicture: Image.asset('assets/images/lake.jpg'),
                
                ),
              
              SizedBox(
                height: 40,
                child: Container(
                  child: Card(
                    color: Colors.white
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: Theme.of(context).primaryColorDark
              ),
              MyListItems()
            ],
          ),
        ),
      );
  }
}

