import 'package:Chat__App/screen/chat.dart';
import 'package:Chat__App/screen/home.dart';
import 'package:Chat__App/screen/location.dart';
import 'package:Chat__App/screen/login.dart';
import 'package:Chat__App/screen/registration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/registration": (context) => Registration(),
        "/chat": (context) => Chat(),
        "/login": (context) => MyLogin(),
        "/location": (context) => LocationPage(),
      }));
}
