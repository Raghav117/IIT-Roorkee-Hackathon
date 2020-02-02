import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/history.dart';
import 'package:pattients/screens/plogin.dart';
import 'package:pattients/screens/preports.dart';

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title:Text("Rodies"),
        backgroundColor: orange,
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("See your previous issued prescription reports here",style: style,),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>History()))
                )
            ),
            SizedBox(
              height: 50.0,
            ),
            Card(
              color: orange,
              elevation: 10.0,
              child: FlatButton(
                child: Text("Upload Patients Report",style: style,),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>PLogin()

                  ),)
              )

            ),
          ],
        )
      ),
    );
  }
}