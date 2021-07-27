import 'dart:math';

import 'package:calc/Screens/InformationScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   bool _isMale = true;
   double _height = 0;
   int _age = 10;
   int _weight = 20 ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _isMale =! _isMale;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _isMale == true ? Colors.blue :Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/male.png"),
                            Text("Male" ,style: TextStyle(fontSize: 34),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _isMale =! _isMale;
                      });
                    },
                    child: Container(
                      color:_isMale != true ? Colors.blue : Colors.grey[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/female.png" , height: 120,),
                          Text("Female" , style: TextStyle(fontSize: 34))
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[300],
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height" , style: TextStyle(
                      fontSize: 40    ,
                      fontWeight: FontWeight.bold  
                    ),) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                              Text("${_height.round()}" , style: TextStyle(
                                fontSize: 37      ,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("cm" ,style: TextStyle(
                                fontSize: 17
                              ),)
                      ],
                    ) ,
                    Slider(
                      key: Key("peter"),
                      max: 250,
                      min: 0,
                      value: _height, onChanged: (double value) {
                        setState(() {
                          _height = value;
                          
                      });
                    },

                    )
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                       Text("Age" , style: TextStyle(
                         fontSize: 25,
                           fontWeight: FontWeight.bold
                       ),),
                       Text("${_age}" ,style:  TextStyle(
                           fontSize: 42,
                           fontWeight: FontWeight.bold
                       ))  ,
                     Row(
                       children: [
                         Container( decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30)         ,
                           color: Colors.blue
                         ),child: IconButton(icon: Icon(Icons.add ), onPressed: ()=>  setState(() {
                           _age ++;
                         }) , color: Colors.white)),
                           SizedBox(width: 10,),
                           Container( decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30)         ,
                             color: Colors.blue
                           ),child: IconButton(icon: Icon(Icons.remove ), onPressed: (){
                             setState(() {
                               _age --;
                             });
                           } , color: Colors.white)),

                       ],
                     ) ,

                   ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight" , style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold

                      ),),
                      Text("${_weight}" ,style:  TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold
                      )),
                      Row(
                        children: [
                          Container( decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)         ,
                              color: Colors.blue
                          ),child: IconButton(icon: Icon(Icons.add ), onPressed: (){ setState(() {
                            _weight ++;
                          });} , color: Colors.white)),
                          SizedBox(width: 10,),
                          Container( decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)         ,
                              color: Colors.blue
                          ),child: IconButton(icon: Icon(Icons.remove ), onPressed: (){
                            setState(() {
                              _weight--;
                            });
                          } , color: Colors.white)),

                        ],
                      ) ,





                    ],

                  ),
                )

              ],
            )
          ),
          Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
          child: Text("Calc" , style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          onPressed: () {
            var calc = _weight / pow(_height / 100, 2);
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => InformationScreen(
              age: _age,
              gender: _isMale == true  ? "Male" : "female",
              result: calc.round()
            )));
          },
          ))
        ],
      )
    );
  }
}
