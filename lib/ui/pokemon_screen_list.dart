import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class PokemonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.indigo[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
    );
  }
}
