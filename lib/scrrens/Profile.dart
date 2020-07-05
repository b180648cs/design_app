
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../drawer.dart';

class Profile extends StatelessWidget {
  List <String> L=["BITCOINS Rs 1000","VNC Classes","ATTENDANCE Recognition","ERP Management"];
  List<String> Q=["assets/ai.png","assets/data2.png","assets/android.jpg","assets/android2.gif","assets/data.png","assets/data2.png","assets/machine1.jpeg","assets/machine2.png","assets/web.jpg"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CEB8),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Drawe(),
      ),
      body:Stack(
        children: <Widget>[

          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28),bottomRight: Radius.circular(28))
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                Text("Aditya",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 260,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      border: Border.all(color: Colors.black,width: 2,style: BorderStyle.solid)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Resource Search",
                         icon: Icon(Icons.search)
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text("Trending Resources",style: TextStyle(color: Colors.white,fontSize: 23,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.infinity,
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: Q.length,
                      itemBuilder: (context,index)=>widget(Q[index])),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 300,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 1.5
                      ),
                      itemCount: L.length,
                      itemBuilder: (context,index)=>Widget1(L[index]),
                    ),

                ),
              ],
            ),
          ),




        ],
      ),
    );
  }
}

class widget extends StatelessWidget
{final String s;

  widget(this.s);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      width: 130,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(s),
          fit: BoxFit.cover
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid),
        boxShadow: [
          BoxShadow(
            offset: Offset(5.0,7.0),
            blurRadius: 2.0,
            spreadRadius: 3.0,
            color: Colors.black38
          )
        ]
      ),
    );
  }

}
class Widget1 extends StatelessWidget
{
  final String L;

  Widget1(this.L);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ()
      {

      },
      child: Material(
        borderRadius: BorderRadius.circular(14),
      elevation: 20,
          child:Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
        border: Border.all(width: 2,style: BorderStyle.solid,color: Colors.black),
        borderRadius: BorderRadius.circular(14),

        ),
            child: Center(
              child: Text(L,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            )
      ),
      ),
    );
  }
  
}


