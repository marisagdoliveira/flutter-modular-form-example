import 'package:flutter_riverpod/flutter_riverpod.dart';

final songNotifierProvider = StateNotifierProvider<SongNotifier, (String artist, String song)?>((ref) {
  return SongNotifier();
});

class SongNotifier extends StateNotifier<(String artist, String song)?> {
  SongNotifier() : super(null);

  void setSong(String artist, String song) {
    state = (artist, song);
  }

  void clear() {
    state = null;
  }
}
