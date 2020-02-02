import 'package:flutter/material.dart';
import 'package:pattients/data/design.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {


   List<Data> list;
  @override
  void initState() {
    list = [
      
      Data("Blood Test", "15/05/2011"),
      Data("Gastric Fluid Anylysis", "23/08/2012"),
      Data("Sugar Test", "8/7/2016"),
      Data("Urine Test", "9/8/2016"),
      Data("Ultrasound", "19/2/2017"),
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
        title: Text("Previous Works"),
        backgroundColor: orange,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list), 
            onPressed: (){}),
        ],
      ),
      backgroundColor: orange,
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
                    child: Text(list[index].date,style: style,),
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
                      child: Text("See patients report"),
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