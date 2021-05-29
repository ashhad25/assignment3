import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Center(child: Text("Login Page")),
        ),
        body:  Column(
          children: [
            SizedBox(height: 50,),
            SizedBox(height: 80,),
            Container(
                  child: TextField(
                    decoration: InputDecoration(
                    border: myinputborder(),
                      enabledBorder: myinputborder(),
                      prefixIcon: Icon(Icons.people),
                      labelText: 'User Name',
                    ),
                  ),
                ),
           SizedBox(height: 30,),
            Container(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                      enabledBorder: myfocusborder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
              )),
            SizedBox(height: 30,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.cyan, 
            minimumSize: Size(150,50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 20,
           ),  
           child: Text("Login"),
            onPressed: (){print("pressed");}, 
            onLongPress: ()
            {
              print("LongPressed");
            },
            )
          ],
        ),  
      ),  
    );  
    }  
  }   
       
      OutlineInputBorder myinputborder(){ 
      return OutlineInputBorder( 
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
            color:Colors.cyan,
            width: 3,
          )
      );
    }

    OutlineInputBorder myfocusborder(){
      return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
            color:Colors.cyan,
            width: 3,
          )
      );
  }