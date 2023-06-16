import 'package:flutter/material.dart';
import 'package:mohtashim_election/screens/VoteForPresident.dart';
import 'package:mohtashim_election/screens/home.dart';
import 'package:mohtashim_election/screens/profile_screen.dart';
import 'package:mohtashim_election/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: 'E-Voting App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          // primarySwatch: Colors.blue,
          ),
      home: const welcome(),
    );
  }
}
