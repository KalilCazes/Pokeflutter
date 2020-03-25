import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_flutter_old/models/pokeapi.dart';

class TextName extends StatelessWidget {
  final Pokemon pokemon;

  TextName({this.pokemon});

  Widget textName(pokemon) {
    return Text(
      pokemon.name.toUpperCase(),
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textName(pokemon);
  }
}
