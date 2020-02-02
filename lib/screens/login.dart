import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/registration.dart';
import 'package:pattients/screens/reports.dart';




class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Heindes"),
        backgroundColor: orange,
        elevation: 0.0,
        centerTitle: true,
      ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: <Widget>[
              Theme(
                data: ThemeData(hintColor: white
                ,
                canvasColor: white,
                accentColor: white,),
                              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value){
                        id = value;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          
                            borderRadius: BorderRadius.circular(20.0)),
                        enabledBorder: OutlineInputBorder(),
                        hintText: "Your Medical I.D."),
                      onSubmitted: (value){
                        id = value;
                        //! Call A Function
                      },
                    ),
                  ),

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
                child: Text("See Your Medical Records",style: style,),),

              SizedBox(
                height: 50,
              ),
              FlatButton(
                child: Text("Know Your Medical I.D.",style: style),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>Registration(),

                  ),);
                },
              )

            ],
          )
        ),
    
    );
  }
}