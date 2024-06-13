import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //constructor
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //constructor
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("ASSIGNMENT  row and column"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Action"),
            )
          ],
        ),
        body: Column(children: [
          Row(children: <Widget>[
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('data'),
                    action: SnackBarAction(
                        label: " Undo",
                        onPressed: () {
                          //  Fluttertoast.showToast(
                          //  mes:"message");
                        })));
              },
              child: Container(width: 110,
                  height: 110,
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 4, 181, 4),
                  child: const Row(
                    children: [
                      const Column(children: [Text("Home"), Icon(Icons.home)]),
                    ],
                  )),
            ),
            Container(
              width: 110,
                  height: 110
                margin: EdgeInsets.all(42),
                padding: EdgeInsets.all(30),
                color: Color.fromARGB(255, 9, 164, 175),
                child: Row(
                  children: [
                    Column(children: [Text("Email"), Icon(Icons.mail)]),
                  ],
                )),
            Container(
              width: 110,
                  height: 110
                margin: EdgeInsets.all(42),
                padding: EdgeInsets.all(30),
                color: Color.fromARGB(255, 111, 4, 84),
                child: Row(
                  children: [
                    Column(children: [Text("Alarm"), Icon(Icons.alarm)]),
                  ],
                )),
          ]),
          Row(
            children: [
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 8, 83, 168),
                  child: Row(
                    children: [
                      Column(children: [Text("Wallet"), Icon(Icons.wallet)]),
                    ],
                  )),
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(40),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 193, 8, 48),
                  child: Row(
                    children: [
                      Column(children: [Text("Backup"), Icon(Icons.backup)]),
                    ],
                  )),
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 191, 207, 90),
                  child: Row(
                    children: [
                      Column(children: [Text("Book"), Icon(Icons.book)]),
                    ],
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 69, 68, 25),
                  child: Row(
                    children: [
                      Column(children: [Text("Camera"), Icon(Icons.camera)]),
                    ],
                  )),
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 21, 75, 105),
                  child: Row(
                    children: [
                      Column(children: [Text("Person"), Icon(Icons.person)]),
                    ],
                  )),
              Container(
                width: 110,
                  height: 110
                  margin: EdgeInsets.all(42),
                  padding: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 134, 4, 154),
                  child: Row(
                    children: [
                      Column(children: [Text("Print"), Icon(Icons.print)]),
                    ],
                  )),
            ],
          )
        ]));
  }
}
