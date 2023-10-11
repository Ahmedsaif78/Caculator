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
  String result ='0';
  String finlresult ='0';
  double num1=0.0;
  double num2=0.0;
  String op='';
  buttonPressed(String btV){
    if(btV=='AC'){
      finlresult='';
      num1=0.0;
      num2=0.0;op='';}
    else if(btV=='/'||btV=='+'||btV=='-'||btV=='*'){
      num1=double.parse(result);
      op=btV;
      finlresult='0';
      result=result+btV;
    }
    else if(btV=='.'){
      if(finlresult.contains('.')){}
      else finlresult+=btV;
    }
    else if(btV=='%'){
      num1=double.parse(result)/100;
finlresult=num1.toString();    }
    else if(btV=='+/-'){
      if(result.toString().contains('-')){
        result.toString().substring(1);
        finlresult=result.toString();
      }
      else {
        result='-'+result;
        finlresult=result.toString();
      }
    }
    else if(btV=='='){
      num2=double.parse(result);
      if(op=='+')
        finlresult=(num1+num2).toString();
      if(op=='-')
        finlresult=(num1-num2).toString();
        if(op=='*')
          finlresult=(num1*num2).toString();
      if(op=='/')
        finlresult=(num1/num2).toString();
    }
    else {finlresult+=btV;}



    setState((){
   if(finlresult=='')
     finlresult;
   else
   result=double.parse(finlresult).toString();
    });

  }
 Widget buttonform(String txtbutn,Color txtcol,Color bkcol){

if(txtbutn!='0'){
   return   Container(
     child: RawMaterialButton(
       shape: CircleBorder(),
       fillColor: bkcol,
       padding: EdgeInsets.all(5),
       onPressed: (){
         buttonPressed(txtbutn);
       },
         child: Text('$txtbutn',style: TextStyle(fontSize: 30,color:txtcol),),
     ),
   );}
else {
  return Container(
    child: RawMaterialButton(
      shape: StadiumBorder(),
      fillColor: bkcol,
      padding: EdgeInsets.fromLTRB(15, 15, 165, 15),
      onPressed: () {
        buttonPressed(txtbutn);
      },
      child: Text('$txtbutn', style: TextStyle(fontSize: 30, color: txtcol),),
    ),
  );
}}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black12,
        appBar:AppBar(
          title: Text('caculator',textDirection: TextDirection.ltr),
          backgroundColor: Colors.cyanAccent,
        //  backgroundColor: Colors.deepPurple,
        ),
    body: Padding(
        padding: EdgeInsets.all(5.0),
   child:Column(
     mainAxisAlignment: MainAxisAlignment.start,
  children:[
    Row(
    children: [Text('$finlresult',textAlign: TextAlign.left,textDirection:TextDirection.ltr,style: TextStyle(fontSize: 30,color: Colors.deepPurple))],
    )
    , Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
      buttonform('AC',Colors.white,Colors.deepPurple),
        buttonform('+/-',Colors.white,Colors.deepPurple),
        buttonform('%',Colors.white,Colors.deepPurple),
        buttonform('/',Colors.white,Colors.deepPurple),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        buttonform('7',Colors.white,Colors.deepPurple),
        buttonform('8',Colors.white,Colors.deepPurple),
        buttonform('9',Colors.white,Colors.deepPurple),
        buttonform('*',Colors.white,Colors.deepPurple),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        buttonform('4',Colors.white,Colors.deepPurple),
        buttonform('5',Colors.white,Colors.deepPurple),
        buttonform('6',Colors.white,Colors.deepPurple),
        buttonform('-',Colors.white,Colors.deepPurple),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        buttonform('1',Colors.white,Colors.deepPurple),
        buttonform('2',Colors.white,Colors.deepPurple),
        buttonform('3',Colors.white,Colors.deepPurple),
        buttonform('+',Colors.white,Colors.deepPurple),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        buttonform('0',Colors.white,Colors.deepPurple),
        buttonform('.',Colors.white,Colors.deepPurple),
        buttonform('=',Colors.white,Colors.deepPurple),


      ],
    )
  ] ) )
      ,);
  }}


