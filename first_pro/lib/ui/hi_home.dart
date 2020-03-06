import 'package:flutter/material.dart';


class Hi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.brown,
     child: new Center(
       child: new Text(

          "okaaayyy",
          textDirection: TextDirection.rtl,
          style: new TextStyle(fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.w800),



        )



      )



    ) ;
  }



  
}
