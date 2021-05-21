//import 'dart:math';
//
//import 'package:flutter/material.dart';
//
//class FirstScreen extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: "Lucky_Number",
//      home:Scaffold(
//        appBar:AppBar(
//          title: Text("back",
//            textDirection:TextDirection.ltr,
//            style: TextStyle(color:Colors.white,
//                fontSize:20.0)
//        ),
//          leading: IconButton(
//            icon: Icon(Icons.arrow_back),
//            onPressed: (){
//             Navigator.pop(context);
//              },
//        ),
//      ) ,
//        body: Matter(),
//
//      )
//    );
//  }
//}
//
//class Matter extends StatelessWidget{
//    @override
//    Widget build(BuildContext context) {
//      return Material(
//        color: Colors.white,
//        child: Center(
//            child: Text(generateLuckyNumber(),
//              textDirection: TextDirection.ltr,
//              style: TextStyle(
//                decoration: TextDecoration.none,
//                color: Colors.black87,
//                fontFamily: "Raleway",
//                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
//                fontSize: 40.0,
//            ),
//          )
//        ),
//      );
//    }
//}
//
//String generateLuckyNumber(){
//  var random = Random();
//  int luckyNumber = random.nextInt(100000);
//  return "Your Lucky Number is $luckyNumber";
//}
//
//
