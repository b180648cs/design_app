


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//colleges list
class InterCollege extends StatelessWidget {
  List<String> L = [
    "NIT CALICUT",
    "NIT TIRUCHY",
    "NIT SURATHKAL",
    "NIT WARANGAL",
    "NIT DURAGAPUR",
    "NIT HARMIPUR",
    "NIT JAMSEDHPUR",
    "NIT ROURKELA",
    "NIT SIKKIM",
    "NIT AGARTALA"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 20,
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            mainAxisSpacing: 20
        ),
        itemCount: L.length,
        itemBuilder: (context, index) => Grid(L[index]),
      ),
    );
  }
}

  class Grid extends StatelessWidget
  {final String s;
  Grid(this.s);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2,style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(s,style: TextStyle(color: Colors.black,fontSize: 20),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                ),
                child: MaterialButton(
                  elevation: 5,
                  child: Text("Tap to Connect"),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),

      ),

    );
  }

}

