import 'package:poke_flutter_old/models/pokeapi.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PokemonRequest {
  static Future<Pokemon> fetchPokemon() async {
    //String url = "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=386";
    String url = "https://pokeapi.co/api/v2/pokemon/27";
    final response =
        await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      return Pokemon.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load pokemons from API');
    }
  }
}
