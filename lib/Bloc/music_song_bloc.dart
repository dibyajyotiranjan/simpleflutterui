import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

part 'music_song_event.dart';
part 'music_song_state.dart';

class MusicSongBloc extends Bloc<MusicSongEvent, MusicSongState> {
  MusicSongBloc() : super(MusicSongInitial()) {
    on<Playsong>((event, emit) async{

      emit (Musicloading());
      final player = AudioPlayer();
      await player.setAudioSource(AudioSource.uri(Uri.parse(event.url)));
      emit(Musicloaded(player));

      // TODO: implement event handler
    });
  }
}
