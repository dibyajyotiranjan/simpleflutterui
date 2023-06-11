import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

import '../Bloc/music_song_bloc.dart';

class Music_Widget extends StatefulWidget {
  String url;

  Music_Widget({Key? key, required this.url}) : super(key: key);

  @override
  State<Music_Widget> createState() => _Music_WidgetState();
}

class _Music_WidgetState extends State<Music_Widget> {
  final _player = AudioPlayer();

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
    _player.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return InkWell(
       onTap: ()async{
         await _player.setAudioSource(AudioSource.uri(Uri.parse(widget.url)));

         if(_player.playing){
           _player.pause();
         }else{
           _player.play();
         }
         //print();
         //  }
         setState(() {

         });
       },
       child: _player.playing? Icon(
         Icons.pause_circle_filled, color: Colors.white, size: 54,) : Icon(
         Icons.play_circle_fill, color: Colors.white, size: 54,));
  }
}
