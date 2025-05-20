import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g_61_test/providers/character_providers.dart';

class CharacterDetailScreen extends ConsumerWidget {
  const CharacterDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final character = ref.watch(selectedCharacterProvider);

    if (character == null) return SizedBox.shrink();

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed:
                      () =>
                          ref.read(selectedCharacterProvider.notifier).state =
                              null,
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(character.image, height: 200),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    character.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Status: ${character.status}'),
                  Text('Species: ${character.species}'),
                  Text('Gender: ${character.gender}'),
                  Text('Origin: ${character.origin}'),
                  Text('Location: ${character.location}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
