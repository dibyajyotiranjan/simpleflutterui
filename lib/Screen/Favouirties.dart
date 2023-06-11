
import 'package:flutter/material.dart';

class Favouirties extends StatelessWidget {
  const Favouirties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(left: 15,right: 15),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15
          ),
          itemBuilder: (context,index){
            return Column(
              children: [
               Container(height: 120,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Colors.red,
               ),),
                Text("Milions"),
                Text("Always Forever")
              ],
            );
          }),
    );
  }
}
