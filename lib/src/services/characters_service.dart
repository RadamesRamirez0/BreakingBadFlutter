import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:breakingbad/src/models/characters_model.dart';
import 'dart:developer';

class CharactersService {
  static const String url = "https://www.breakingbadapi.com/api/characters";

  List<Character> characters = [];

  Future<bool> fetchCharacters() async {
    try {
      final res = await http.get(Uri.parse(url));

      if (res.statusCode != 200) return false;

      final chars = jsonDecode(res.body);

      for (final char in chars) {
        characters.add(Character.fromJson(char));
      }
    } catch (error) {
      log(error.toString());
      return false;
    }
    return true;
  }

  Future<List<Character>> getCharacters() async {
    await fetchCharacters();
    return characters;
  }
}
