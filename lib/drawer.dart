
import 'package:designapp/scrrens/Inter_College.dart';
import 'package:designapp/scrrens/Intra_College.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'scrrens/Home_Profile.dart';

class Drawe extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(width: 2,color: Colors.black),

            ),
            child: ListTile(
               leading: Icon(Icons.face,size: 18,),
              title: Text("Profile",style: TextStyle(fontSize: 19),),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
            ),
          ),
        ),
        Divider(

        ),
        Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(width: 2,color: Colors.black),

            ),
            child: ListTile(

              title: Text("Inter college connect",style: TextStyle(fontSize: 19),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InterCollege()));
              },
            ),
          ),
        ),
        Divider(

        ),
        Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 20,
          child:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 2,color: Colors.black),

          ),
          child: ListTile(

            title: Text("Intra college connect",style: TextStyle(fontSize: 19),),
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>IntraCollege()));
            },
          ),
        ),),
        Divider(

        ),
        Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(width: 2,color: Colors.black),

            ),
            child: ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Logout",style: TextStyle(fontSize: 19),),
              onTap: ()
              {
                Navigator.pop(context);
                Navigator.pop(context);
              }
            ),
          ),
        ),
      ],
    );
  }

}