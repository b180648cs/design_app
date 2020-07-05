import 'dart:ui';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'scrrens/Profile.dart';

void main()
{
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homee(),
));
}

class Homee extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Column(
      children: <Widget>[
        Container(
          height: 385,
          width: double.infinity,
          child: FlareActor("assets/Aditya.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"idle"),
        ),

        Container(
          child: Center(
            child: Text("Welcome To ResourceShare",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Color.fromRGBO(130, 140, 237, 1)),),
          ),
        ),
        Container(
          width: 270,
          height: 40,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(13),
           border: Border.all(width: 2,),
            color: Colors.white ,
            boxShadow: [
              BoxShadow(
                color: Colors.grey
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
             labelText: "Username",
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 270,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(width: 2,),
              color: Colors.white ,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey
                )
              ]
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 160,
          height: 40,

          decoration: BoxDecoration(
            color: Color.fromRGBO(130, 170, 237, 1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: MaterialButton(
            child: Text("Login",style: TextStyle(fontSize: 12,color: Colors.white),),
            onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
            },
          ),
        )

      ],

    ),
    );
  }

}
