import 'package:flutter/material.dart';
class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return new LoginState();
     
      }
    
    
    
    }
    
    class LoginState extends State{
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  String _msg;
  void _erease(){

    setState(() {
      _passController.clear();
      _userController.clear()
    });

  }
  void _showLogin(){
      setState(() {
        if(_userController.text.isNotEmpty && _passController.text.isNotEmpty){
          _msg = _userController.text;


        }else{

          _msg = "nothing";


        }
      });



  }
  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
  appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blue,
  ),
    backgroundColor: Colors.blueGrey,
    body: new Container(
      alignment: Alignment.topCenter,
      child: new ListView(
        children: <Widget>[
            Image.asset('images/face.png',
              height: 90.0,
              width: 90.0,
              color: Colors.lightGreen,
            
            ),

          //form
          new Container(
            height: 180.0,
              width: 380.0,
              color: Colors.white,
            
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: _userController,
                  decoration: new InputDecoration(
                      hintText : 'UserName',
                      icon:new Icon(Icons.person)
                  ),


                ),
                new TextField(
                  controller: _passController,
                  decoration: new InputDecoration(
                      hintText : 'PassWord',
                      icon:new Icon(Icons.lock)
                  ),
                  obscureText: true,

                ),
                new Padding(padding: new EdgeInsets.all(11.0)),
                new Center(
                  child: new Row(
                    children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(left:35.0),
                            child: new RaisedButton(onPressed: _showLogin,
                            color: Colors.redAccent,
                            child: new Text("Login",
                            style: new TextStyle(color: Colors.white,fontSize: 17.0),
                            ),
                            
                            ),
                                


                        ) ,
                        new Container(
                          margin: const EdgeInsets.only(left:110.0),
                            child: new RaisedButton(onPressed: _erease,
                            color: Colors.redAccent,
                            child: new Text("Clear",
                            style: new TextStyle(color: Colors.white,fontSize: 17.0),
                            ),
                            
                            ),
                                


                        ) ,


                    ],

                  ),
                )



              ],


            ) ,


          ),
           //form end hear
           new Padding(padding: const EdgeInsets.all(14.0)),
          new Row(
            
            mainAxisAlignment: MainAxisAlignment.center,   
            children: <Widget>[
                  new Text("Welcome , ${_msg}",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500

                  ),
                  
                  ),


            ],

          )
        ],

      ),

    ),
    
    
    );
  }
}