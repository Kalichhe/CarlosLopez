import 'package:flutter/material.dart';
import 'package:g_61_test/providers/character_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersAsync = ref.watch(characterProvider);

    return charactersAsync.when(
      loading: () => Center(child: CircularProgressIndicator()),
      error: (err, _) => Center(child: Text('Error: $err')),
      data:
          (characters) => ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: Image.network(character.image),
                  title: Text(character.name),
                  subtitle: Text('Status: ${character.status}'),
                  onTap: () {
                    ref.read(selectedCharacterProvider.notifier).state =
                        character;
                  },
                ),
              );
            },
          ),
    );
  }
}
