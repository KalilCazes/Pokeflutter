import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_flutter_old/models/pokeapi.dart';

class TextHeight extends StatelessWidget {
  final Pokemon pokemon;

  TextHeight({this.pokemon});

  Widget textHeight(pokemon) {
    return Text(
      pokemon.height.toString(),
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textHeight(pokemon);
  }
}
