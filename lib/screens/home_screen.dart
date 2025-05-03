import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/favorite_song/application/song_notifier.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final song = ref.watch(songNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Favorite Song App")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (song != null)
              Text(
                'Your favorite song: "${song.$2}" by ${song.$1}',
                style: GoogleFonts.darkerGrotesque(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.push('/details'),
              child: const Text('Go to Details'),
            ),
          ],
        ),
      ),
    );

  }
}
