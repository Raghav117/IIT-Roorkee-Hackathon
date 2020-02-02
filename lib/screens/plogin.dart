import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:pattients/screens/preports.dart';



class PLogin extends StatefulWidget {
  @override
  _PLoginState createState() => _PLoginState();
}

class _PLoginState extends State<PLogin> {
  String id;

  String cid;

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
          child: Theme(
                data: ThemeData(hintColor: white
                ,
                canvasColor: white,
                accentColor: white,),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: <Widget>[
               Padding(
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
                        hintText: "Your Lisence"),
                      onSubmitted: (value){
                        id = value;
                        //! Call A Function
                      },
                    ),
                  ),

                
              

              // SizedBox(
              //   height: 50,
              // ),
              // FlatButton(
              //   child: Text("Know Your Medical I.D.",style: style),
              //   onPressed: (){
              //     Navigator.push(context,MaterialPageRoute(
              //       builder: (BuildContext context)=>Registration(),

              //     ),);
              //   },
              // )


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
                        hintText: "Patient Medical I.D."),
              onChanged: (value){
                cid = value;
              },
              ),
            ),
            
              SizedBox(
                height: 50,
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context)=>Preports(),

                  ),);
                },
                child: Text("Login",style: style,),),
            SizedBox(
              height: 50,
            ),


            ],
          ),)
        ),
    
    );
  }
}