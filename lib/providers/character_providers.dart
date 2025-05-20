import 'package:g_61_test/controllers/character_controller.dart';
import 'package:g_61_test/models/character_model.dart';
import 'package:riverpod/riverpod.dart';

final characterProvider = StateNotifierProvider<
  CharacterController,
  AsyncValue<List<CharacterModel>>
>((ref) => CharacterController());

final selectedCharacterProvider = StateProvider<CharacterModel?>((ref) => null);
