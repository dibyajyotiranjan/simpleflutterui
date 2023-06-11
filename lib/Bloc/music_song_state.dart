part of 'music_song_bloc.dart';

@immutable
abstract class MusicSongState {}

class MusicSongInitial extends MusicSongState {}
//
class Musicloading extends MusicSongState {
  Musicloading();
}
class Musicloaded extends MusicSongState {
  AudioPlayer player;
  Musicloaded(this.player);
}

// class MusicError extends MusicSongState {
//   String errMsg;
//   MusicError(this.errMsg);
// }