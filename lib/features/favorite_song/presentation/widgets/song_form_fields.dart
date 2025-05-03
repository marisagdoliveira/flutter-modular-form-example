import 'package:flutter/material.dart';
import '../../domain/validators/song_validators.dart';

class ArtistFormField extends StatelessWidget {
  final TextEditingController controller; // input type
  const ArtistFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller, // input type
      decoration: const InputDecoration(labelText: 'Artist'),
      validator: validateArtist,
    );
  }
}

class SongFormField extends StatelessWidget {
  final TextEditingController controller;
  const SongFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(labelText: 'Song Name'),
      validator: validateSong,
    );
  }
}
