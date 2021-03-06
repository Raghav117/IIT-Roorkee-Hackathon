import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/login.dart';
import 'package:pattients/screens/options.dart';
import 'package:pattients/screens/plogin.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
      title: "Healiends",
      home: MyApp()
      // home: Reports(),
      )
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              
        title:Row(children: <Widget>[
          Image.asset("images/picture1.png",height: 40,),
          Text("Rodies"),
        ],),
        backgroundColor: orange,
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("For Pathologist",style: style,),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>Options(),)))
            ),
            SizedBox(
              height: 50.0,
            ),
            Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("For Seeing Patients Medical History",style: style,),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>Login(),

                  ),)
              )

            ),
          ],

        ),),
    );
  }
}