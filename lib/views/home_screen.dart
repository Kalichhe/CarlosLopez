import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g_61_test/providers/character_providers.dart';
import 'package:g_61_test/views/character_detail_screen.dart';
import 'package:g_61_test/views/home_screen_content.dart';
import 'package:g_61_test/views/widgets/custom_app_bar.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final selectedCharacter = ref.watch(selectedCharacterProvider);

    Widget body;
    if (_selectedIndex == 0) {
      if (selectedCharacter != null) {
        body = CharacterDetailScreen();
      } else {
        body = HomeScreen();
      }
    } else if (_selectedIndex == 1) {
      body = Center(child: Text('Search Screen'));
    } else {
      body = Center(child: Text('Profile Screen'));
    }

    return Scaffold(
      appBar: CustomAppBar(),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (index != 0) {
              ref.read(selectedCharacterProvider.notifier).state = null;
            }
          });
        },
      ),
    );
  }
}
