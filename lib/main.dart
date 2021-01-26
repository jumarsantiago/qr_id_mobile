import 'package:flutter/material.dart';
import 'package:qr_id_mobile/pages/LogInPage.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR ID',
      home: LogInPage(),
    );
  }
}


