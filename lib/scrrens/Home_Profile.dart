
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  List<String> L=["Name: Aditya","Age:20","College:NIT CALICUT","Bitcoins:Rs 1000"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
      body:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Center(
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 280,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black,width: 2,style: BorderStyle.solid)

            ),
            child: ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Resources owned by You"),
            ),
          ),
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: 400,
      child: GridView.builder(

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: L.length,
        itemBuilder: (context,index)=>Grid(L[index]),
      ),
    ),
      SizedBox(
        height: 10,
      ),
      Center(child:Container(
        width: 190,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.amberAccent,
        ),
        child: MaterialButton(
          child: Text("Back To Home",style: TextStyle(color: Colors.white),),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),)
    ],
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
          child: Text(s,style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
      ),

    );
  }

}