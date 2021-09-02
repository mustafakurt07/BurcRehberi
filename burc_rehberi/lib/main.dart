import 'package:flutter/material.dart';

import 'burc_listesi.dart';
//stle stateless widget olusturma kısayolu
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: BurcListesi(),
    );
  }
}

