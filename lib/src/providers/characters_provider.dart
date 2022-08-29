import 'package:flutter/material.dart';
import '../models/characters_model.dart';
import '../services/characters_service.dart';

class CharacterProvider with ChangeNotifier {
  List<Character>? characters = [];
  Character? activeCharacter;

  CharacterProvider() {
    getChars();
  }

  void getChars() async {
    final chars = await CharactersService().getCharacters();
    characters = chars;
    notifyListeners();
  }

  Character selectCharacter(int charId) {
    activeCharacter =
        characters?.firstWhere((element) => element.charId == charId);
    notifyListeners();
    return activeCharacter!;
  }
}
