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
                          color: _isMale == true ? Colors.blue :Colors.grey[400],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.no_encryption_gmailerrorred_sharp , size: 78),
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
                      color:_isMale != true ? Colors.blue : Colors.grey[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.no_encryption_gmailerrorred_sharp , size: 78),
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
                              Text("156" , style: TextStyle(
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                       Text("Age"),
                       Text("180")  ,
                     Row(
                       children: [
                         Container( decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10)         ,
                           color: Colors.blue
                         ),child: IconButton(icon: Icon(Icons.add ), onPressed: ()=> print("click") , color: Colors.white)),
                           SizedBox(width: 10,),
                           Container( decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10)         ,
                             color: Colors.blue
                           ),child: IconButton(icon: Icon(Icons.remove ), onPressed: ()=> print("click") , color: Colors.white)),

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
          onPressed: ()=> print("click"),
          ))
        ],
      )
    );
  }
}
