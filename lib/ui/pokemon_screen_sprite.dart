import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_flutter_old/models/pokeapi.dart';

class SpriteImage extends StatelessWidget {
  final Pokemon pokemon;

  SpriteImage({this.pokemon});

  Widget spriteImage(pokemon) {
    return Image.network(
      pokemon.sprites.frontDefault.toString(),
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return spriteImage(pokemon);
  }
}
