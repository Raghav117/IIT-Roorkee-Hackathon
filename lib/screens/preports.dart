import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

class Preports extends StatefulWidget {
  @override
  _PreportsState createState() => _PreportsState();
}

class _PreportsState extends State<Preports> {
  String title;
  File file;

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
              child: InkWell(
                              child: Container(
                  height: MediaQuery.of(context).size.height/6,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.grey,
                  child: Center(
                    
                    child: Text("Upload Patient Report")
                  ),
                ),
                onTap: () async {
                  file = await FilePicker.getFile();
                  print(file.path);
                  setState(() {
                    
                  });
                  
                },
              ),
            ),
            
              SizedBox(
                height: 50,
              ),
              file!=null?FlatButton(
                color: orange,
                onPressed: (){
                  OpenFile.open(file.path);
                  // file.open(mode: FileMode.read);
                  // Navigator.push(context,MaterialPageRoute(
                  //   builder: (BuildContext context)=>Preports(),

                  // ),);
                },
                child: Text("Press Here To See Your Report",),):Container(),
 
              SizedBox(
                height: 20,
              ),
                           file!=null?FlatButton(
                color: orange,
                onPressed: (){
                  // file.open(mode: FileMode.read);
                  // Navigator.push(context,MaterialPageRoute(
                  //   builder: (BuildContext context)=>Preports(),

                  // ),);
                },
                child: Text("Press Here To Upload",),):Container(),
                
              SizedBox(
                height: 20,
              ),
                Text("Warning! After Uploading,you are not able change it.",style: warning,),
            SizedBox(
              height: 50,
            ),
            ],
          ),)
    );
  }
}