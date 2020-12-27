import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Crud(),
    );
  }
}

class Crud extends StatelessWidget {
  // ignore: deprecated_member_use
  final Firestore firestore = Firestore.instance;
  void create() async {}
  void _read() async {}
  void _iupdate(async) {}
  void _delete() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Create"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
