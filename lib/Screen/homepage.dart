
import 'package:flutter/material.dart';
import 'package:saasakitech/Screen/Favouirties.dart';
import 'package:saasakitech/Screen/Home_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List navigation = [HomeScreen(),Favouirties(),Icon(Icons.search),Container(color: Colors.green,)];
  int index= 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(10),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.blue,
           selectedItemColor: Colors.white,
          // unselectedItemColor: Colors.white,s.black,
          // unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (int){
            index= int;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search_sharp),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.queue_music),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: ""),

          ],
        ),
        body: navigation[index],
      ),
    );
  }
}
