import 'package:flutter/material.dart';


class home extends StatelessWidget{
  @override
  void a(){

  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
              new Text("1st colorm",textDirection: TextDirection.ltr,style: new TextStyle(color: Colors.red)),
              new Text("2nd colom",textDirection: TextDirection.ltr,style: new TextStyle(color: Colors.black),)
              ,
              new RaisedButton(onPressed: null,child: new Text("hi"),),
              new Container(
                  alignment: Alignment.bottomRight,
                  color: Colors.cyan,
                  
                  child: new Text("2nd container",textDirection: TextDirection.ltr,style: new TextStyle(color: Colors.blueGrey),),
                  


              )


          ],



      ) ,



    );
  }



  
}