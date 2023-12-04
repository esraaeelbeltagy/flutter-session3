import 'package:flutter/material.dart';
import 'package:tasks/sign_in.dart';
import 'package:tasks/sign_up.dart';
import 'package:tasks/welcome.dart';


import 'car.dart';
import 'messenger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    // );
   //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return const  MaterialApp(
     
     // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:   Car(),
    );
  }
}
