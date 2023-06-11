
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:saasakitech/custom_widget/music.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List song =["http://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg","https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3","https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3","https://www.soundhelix.com/examples/mp3/SoundHelix-Song-16.mp3"];

  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(10),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.format_align_left_outlined,size: 30,),
              Container(
                height: 40,
                width: 300,
                color: Colors.red.withOpacity(0.2),
                child: TextField(
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.search,size: 30,),
                    hintText: "Search"

                  ),
                ),
              )
            ],
          ),
          Text("Trending right now", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),textAlign: TextAlign.left,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: song.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Container(
                    height: 250,
                    width: 330,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Align(
                            child: Icon(Icons.more_horiz),
                          alignment: Alignment.bottomRight,
                        ),
                        Container(
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.blue,
                            ),
                          height: 80,
                          width: 330,
                          child: ListTile(
                            title: Text("The Dark Side"),
                            subtitle: Text("Muse-Khone"),
                            trailing: Music_Widget(url: song[index],)
                          )
                        )
                      ],
                    ),
                  );
                }
            ),

          ),
          SizedBox(
            height: 50,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
                color: Colors.green.withOpacity(0.2),
              ),
              tabs: [
                Text("Trending right now"),
                Text("Rock"),
                Text("Hip Hop"),
                Text("Electro"),
                Text("attitude"),
                Text("love"),
                Text("DJ"),
                Text("High Bass"),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
              itemCount:Songlist.length,
                  itemBuilder: (context,index){
                    return ListTile(

                         // contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                          leading: Icon(Icons.image,size: 50,),
                          title: Text(Songlist[index]["song name"]),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.person,size: 13,),
                              Text(Songlist[index]["uploader"])
                            ],
                          ),
                          trailing: InkWell(
                            onTap: (){
                              FavList.add({"song name":Songlist[index]["song name"],"uploader":Songlist[index]["uploader"]});
                              setState(() {

                              });
                            },
                            child: Icon(Icons.favorite_border_outlined)
                          ),
                    );
                  }),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ), Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),

            ],
          ))
        ],
      ),
    );
  }
}
