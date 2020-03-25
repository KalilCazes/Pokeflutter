import 'package:flutter/material.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_attributes.dart';
import 'package:poke_flutter_old/ui/pokemon_screen_list.dart';

void main() => runApp(MaterialApp(
      title: "Pokeflutter",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.purple[300],
          accentColor: Colors.green,
          accentColorBrightness: Brightness.dark),
    ));

final List<int> colorCodes = <int>[600, 500, 100];
final List<String> entries = <String>['A', 'B', 'C'];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokeflutter")),
      body: SafeArea(
        child: PokemonAttributes(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text("Pokemons"),
              subtitle: Text("testezin"),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Container(
                height: double.maxFinite,
                child:
                    PokemonList() /* ListView.builder(
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.indigo[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
              ), */
                ),
          ],
        ),
      ),
    );
  }
}
