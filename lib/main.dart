import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/login.dart';
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
        title:Text("Heindes"),
        backgroundColor: orange,
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: orange,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("For Pathologist / Doctors",style: style,),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>PLogin(),)))
            ),
            SizedBox(
              height: 50.0,
            ),
            Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("Patients Medical History",style: style,),
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