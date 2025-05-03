import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/song_notifier.dart';
import 'song_form_fields.dart';

class SongForm extends ConsumerStatefulWidget {
  const SongForm({super.key});

  @override
  ConsumerState<SongForm> createState() => _SongFormState();
}

class _SongFormState extends ConsumerState<SongForm> {
  final _formKey = GlobalKey<FormState>();
  final _artistController = TextEditingController();
  final _songController = TextEditingController();

  @override
  void dispose() {
    _artistController.dispose();
    _songController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ref
          .read(songNotifierProvider.notifier)
          .setSong(_artistController.text.trim(), _songController.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Song submitted! Check your homepage ;)')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ArtistFormField(controller: _artistController),
            const SizedBox(height: 16),
            SongFormField(controller: _songController),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: _submitForm, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
