// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:happy_ping/Pages/home.dart';
import 'package:happy_ping/Pages/info.dart';
import 'package:happy_ping/onboarding/name.dart';
import 'package:happy_ping/onboarding/onboarding1.dart';
import 'package:happy_ping/onboarding/onboarding2.dart';
import 'package:happy_ping/onboarding/onboarding3.dart';

void main(){
  runApp(const HappyPing());
}

class HappyPing extends StatefulWidget {
  const HappyPing({super.key});

  @override
  State<HappyPing> createState() => _HappyPingState();
}

class _HappyPingState extends State<HappyPing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'HappyPing',
        theme: ThemeData(primarySwatch: Colors.amber),
    home: Onboarding1(),
      routes: {'/onboarding12' : (context) => Onboarding2(),
      'onboarding23' : (context) => Onboarding3(),
        'name' : (context) => Name(),
        'nameToInfo' : (context) => InfoCollection(),
        'homescreen' : (context) => HomeScreen(),
      }
    );
  }
}
