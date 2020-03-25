import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_flutter_old/models/pokeapi.dart';
import 'package:poke_flutter_old/net/network_manager.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_height.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_name.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_sprite.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_weight.dart';

class PokemonAttributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pokemon>(
      future: PokemonRequest.fetchPokemon(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Pokemon pokemon = snapshot.data;
          return Column(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: SpriteImage(
                  pokemon: pokemon,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple[200],
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Container(
                    child: TextName(
                      pokemon: pokemon,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Container(),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              child: Text(
                                "HEIGHT",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              child: TextHeight(
                                pokemon: pokemon,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              child: Text(
                                "WEIGHT",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              child: TextWeight(
                                pokemon: pokemon,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(),
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
