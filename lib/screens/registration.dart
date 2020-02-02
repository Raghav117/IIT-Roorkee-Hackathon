import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/reports.dart';


class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var mobile;
  String name;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        enabledBorder: OutlineInputBorder(),
                        hintText: "Full Name"),
              onChanged: (value){
                name = value;
              },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        enabledBorder: OutlineInputBorder(),
                        hintText: "Mobile Number"),
              onChanged: (value){
                mobile = value;
              },
              ),
            ),
            SizedBox(
              height: 50,
            ),

            FlatButton(
              onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>Reports(),

                  ),);
                },
              child: Text("See Your Medical Report",style: style,)
              )
          ],
        ),
      ),

    );
  }
}