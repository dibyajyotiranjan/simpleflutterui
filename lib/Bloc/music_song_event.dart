part of 'music_song_bloc.dart';

@immutable
abstract class MusicSongEvent {}

class Playsong extends MusicSongEvent{
  String url;
  Playsong(this.url);
}
