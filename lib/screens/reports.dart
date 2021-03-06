import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  List<Data> list;
  @override
  void initState() {
    list = [
      Data("Ultrasound", "11/01/2010"),
      Data("Gastric Fluid Anylysis", "30/07/2015"),
      Data("Sugar Test", "8/7/2016"),
      Data("Urine Test", "9/8/2016"),
      Data("Blood Test", "19/2/2017"),
      Data("C.T. Scan", "4/6/2017"),
      Data("Chest Radiograph", "26/6/2017"),
      Data("Cardiac Stress Test", "26/9/2017"),
    ];    print(list);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Reports"),
        backgroundColor: orange,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list), 
            onPressed: (){}),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          
          itemBuilder: (BuildContext context,int index){
            // return ListTile(
            //   leading: Text(list[index].date,style: style1,),
            //   subtitle: Text(list[index].title,style: style1,),
            //   title: Text(list[index].title,style: style1,),

            // );

            return Container(
              child: Column(
                children: <Widget>[
                  
                  SizedBox(
                    height: 20
                  ),
                  Container(
                    child: Text(list[index].date,style: style1,),
                  ),
                  SizedBox(
                    height: 20
                  ),
                  Container(
                    child: Text(list[index].title,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 20
                  ),
                  Container(
                    height: 30,
                    color: Colors.white60,
                    child: Center(
                      child: Text("See your medical report"),
                    ),
                  ),
                  SizedBox(
                    height: 20
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Data{

  // final File file;
  final String title;
  final String date;

  Data(this.title, this.date);



}