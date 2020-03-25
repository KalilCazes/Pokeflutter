import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_flutter_old/models/pokeapi.dart';

class TextWeight extends StatelessWidget {
  final Pokemon pokemon;

  TextWeight({this.pokemon});

  Widget textWeight(pokemon) {
    return Text(
      pokemon.weight.toString(),
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textWeight(pokemon);
  }
}
