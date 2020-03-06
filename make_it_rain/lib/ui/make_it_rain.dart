import 'package:flutter/material.dart';


class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
      }
    
    
    
      
    }
    
    class MakeItRainState extends State<MakeItRain> {
  int _moneyC = 100;
  void _rainMon(){

setState(() {
  _moneyC = _moneyC + 100;
});


  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Paisa No Varsad")
       ,
       backgroundColor: Colors.greenAccent,
      )
      ,
      body: new Container(
        child: new Column(
          children: <Widget>[

            new Center(
                child: new Text("Paisa vadu thvu",
              style: new TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 29.9 
              ),
              )

,



            ),
            new Expanded(
              child:new Center(
                child: new Text("$_moneyC",style: TextStyle(color: _moneyC > 2000 ? Colors.blueGrey : Colors.greenAccent,fontSize: 49.9,fontWeight: FontWeight.w800),),


              ),  
            
            
            ),
            new Expanded(
              child:new Center(
                child: new FlatButton(onPressed:_rainMon, 
                child:new Text("paisa no varsad",
                          style: new TextStyle(fontSize: 19.9,)
                ),color: Colors.green, 
                ),

              )  
              
              )
              

          ],


        ),

      ),

    );
  }
      
}