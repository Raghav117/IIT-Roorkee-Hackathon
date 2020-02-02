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
    list = List.generate(10, (i){
      return (Data(
        "this is $i",
        "$i/0$i/2$i 2$i",
      ));
    });
    print(list);
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
                    child: Text(list[index].title,style: style1,),
                  ),
                  SizedBox(
                    height: 20
                  ),
                  Container(
                    height: 30,
                    color: Colors.white60,
                    child: Center(
                      child: Text("This is our file press here to see"),
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