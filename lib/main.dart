import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/music_song_bloc.dart';
import 'Screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //themeMode: ThemeMode.dark,
      theme: ThemeData(

        brightness: Brightness.dark,
        primarySwatch: Colors.blue,

      ),
      home: MyHomePage(),
    );
  }
}