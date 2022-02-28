import 'package:flutter/material.dart';
import 'package:flutter_application_3/whatsapp_home.dart';



void main (){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhataApp',
      theme : ThemeData(
        primarySwatch : Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home : const WhatsAppHome()
    );
  }
}