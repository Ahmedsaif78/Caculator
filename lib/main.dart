import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: Caculator());
  }
}
class Caculator extends StatefulWidget {


  @override
  State<Caculator> createState() => _CaculatorState();
}

class _CaculatorState extends State<Caculator> {

 Widget buttonform(){
return   Container(
     child: RawMaterialButton(
       shape: CircleBorder(),
       fillColor: Colors.deepPurpleAccent,
       onPressed: (){},
       child: Text('A/c',style: TextStyle(fontSize: 100,color: Colors.white),),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          title: Text('caculator',textDirection: TextDirection.ltr,),
        //  backgroundColor: Colors.deepPurple,
        ),
    body: Padding(
        padding: EdgeInsets.all(5.0),
   child:Column(
     mainAxisAlignment: MainAxisAlignment.start,
  children:[
    Row(
      children: [Text('0',textAlign: TextAlign.left,textDirection:TextDirection.ltr,style: TextStyle(fontSize: 100),)],
    )
    , Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
      buttonform(),
    ],
    )
  ] ) )
      ,);
  }
}

