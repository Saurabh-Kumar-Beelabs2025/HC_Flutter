import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternew/ui_screens/onbording.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});




  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    // Add a delay of 5 seconds and then navigate to the next screen
    Timer(
      Duration(seconds: 5),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Onbording(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(


      body: Center(


     

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset('assets/image/handoverlogo.png'),

/*

            ElevatedButton(
                onPressed: () {

                  Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) => Onbording(),
                      ));
                }, child: null,
            )
*/


          ],
        ),
      ),

    );
  }
}
