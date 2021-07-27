import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
   final String gender ;
   final result ;
   final int age;
  const InformationScreen({this.gender,this.result , this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information Calc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${gender}" , style: TextStyle(fontSize: 27),),
            Text("Result : ${result}" ,style: TextStyle(fontSize: 27)),
            Text("Age : ${age}" ,style: TextStyle(fontSize: 27)),
          ],
        ),
      ),
    );
  }
}
