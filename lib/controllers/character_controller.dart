import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g_61_test/models/character_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CharacterController
    extends StateNotifier<AsyncValue<List<CharacterModel>>> {
  CharacterController() : super(const AsyncValue.loading()) {
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    try {
      final response = await http.get(
        Uri.parse('https://rickandmortyapi.com/api/character'),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<CharacterModel> characters =
            (data['results'] as List)
                .map((json) => CharacterModel.fromJson(json))
                .toList();
        state = AsyncValue.data(characters);
      } else {
        state = AsyncValue.error(
          'Error al cargar personajes',
          StackTrace.current,
        );
      }
    } catch (e, stack) {
      state = AsyncValue.error(e.toString(), stack);
    }
  }
}
