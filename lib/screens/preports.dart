import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';

class Preports extends StatefulWidget {
  @override
  _PreportsState createState() => _PreportsState();
}

class _PreportsState extends State<Preports> {
  File file;
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
                height: MediaQuery.of(context).size.height/6,
                width: 200,
                color: Colors.grey,
                child: FlatButton(child: Center(
                  
                  child: Text("Upload Patient Report"),
                  
                ),
                onPressed: () async {
                  file = await FilePicker.getFile();
                },
                ),
              ),
            ),
            
              SizedBox(
                height: 50,
              ),
             file!=null? FlatButton(
                color: orange,
                onPressed: (){
              OpenFile.open(file.path);
              
                },
                child: Text("See Your Upload File",),):Container(),
            
              SizedBox(
                height: 50,
              ),
              file!=null?FlatButton(
                color: orange,
                onPressed: (){
              
              
                },
                child: Text("Press Here To Upload",),):Container(),
                Text("Warning! After Uploading,you are not able change it.",style: warning,),
            SizedBox(
              height: 50,
            ),
            ],
          ),)
    );
  }
}