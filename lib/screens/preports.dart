import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';

class Preports extends StatefulWidget {
  @override
  _PreportsState createState() => _PreportsState();
}

class _PreportsState extends State<Preports> {
  String title;

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
        // backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: <Widget>[
               Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value){
                        title = value;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          
                            borderRadius: BorderRadius.circular(20.0)),
                        enabledBorder: OutlineInputBorder(),
                        hintText: "Title"),
                      onSubmitted: (value){
                        title = value;
                        //! Call A Function
                      },
                    ),
                  ),


SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                color: Colors.grey,
                child: Center(
                  
                  child: Text("Upload Patient Report")
                ),
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
                child: Text("Press Here To Upload",),),
                Text("Warning! After Uploading,you are not able change it.",style: warning,),
            SizedBox(
              height: 50,
            ),
            ],
          ),)
    );
  }
}