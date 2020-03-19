import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:toastplugintest/toastplugintest.dart';

 void main()=>runApp(new MyApp());
 class MyApp extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
       return new MaterialApp(
         title: 'chloe',
         home: new Scaffold(
           appBar: new AppBar(title: Text('MyApp'),),
           body :new Center(child: new RaisedButton(
               child: new Text('showtoast'),
               onPressed: (){
                 Toastplugintest.showToast(message: 'hello world');
           }),)
         ),
       );
   }
 }