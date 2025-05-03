import 'package:flutter/material.dart';
import '../widgets/song_form.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Enter your favorite song:'),
          const SongForm(),
          const SizedBox(height: 32),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go back Home'),
            ),
          ),
        ],
      ),
    );
  }
}
