import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:cal1(),
      )
  );
}
class cal1 extends StatefulWidget {
  const cal1({super.key});
  @override
  State<cal1> createState() => _cal1State();
}

class _cal1State extends State<cal1> {
  String ans="";
  String a1="";
  int t=0;
  get(String a)
  {
    if(a=="C")
    {
      ans="";
    }
    else if(a=="CE")
    {
      ans=ans.substring(0,ans.length-1);
    }
    else if(a=="+")
    {
      t=1;
      a1=ans;
      ans="";
    }else if(a=="-")
    {
      t=2;
      a1=ans;
      ans="";
    }
    else if(a=="*")
    {
      t=3;
      a1=ans;
      ans="";
    }
    else if(a=="=")
    {
      int x,y;
      x=int.parse(a1);
      y=int.parse(ans);
      int c=0;
      if(t==1)
      {
        c=x+y;
      }
      else if(t==2)
      {
        c=x-y;
      }
      else if(t==3)
      {
        c=x*y;
      }
      ans=c.toString();
    }
    else
    {
      ans=ans+"$a";
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculator"),),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(10),
          color: Colors.grey,
          child: Text("$ans",style: TextStyle(fontSize: 30),),
        ),

        Row(children: [
          InkWell(onTap: () => get("1"),child:  Container(child: Text("1"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width:50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("2"),child:  Container(child: Text("2"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("3"),child:  Container(child: Text("3"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("4"),child:  Container(child: Text("4"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
        ],),

        Row(children: [
          InkWell(onTap: () => get("5"),child:  Container(child: Text("5"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("6"),child:  Container(child: Text("6"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("7"),child:  Container(child: Text("7"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("8"),child:  Container(child: Text("8"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
        ],),

        Row(children: [
          InkWell(onTap: () => get("9"),child: Container(child: Text("9"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("0"),child: Container(child: Text("0"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("C"),child: Container(child: Text("C"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("CE"),child: Container(child: Text("CE"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
        ],),

        Row(children: [
          InkWell(onTap: () => get("+"),child: Container(child: Text("+"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("-"),child: Container(child: Text("-"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("*"),child: Container(child: Text("*"),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
          InkWell(onTap: () => get("="),child: Container(child: Text("="),margin: EdgeInsets.all(10),alignment: Alignment.center,height: 50,width: 50,decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 1)),)),
        ],),


      ],),
    );
  }
}