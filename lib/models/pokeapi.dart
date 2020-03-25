class Pokemon {
  String name;
  int height;
  int weight;
  Sprites sprites;

  Pokemon({this.name, this.height, this.weight, this.sprites});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    weight = json['weight'];
    sprites =
        json['sprites'] != null ? new Sprites.fromJson(json['sprites']) : null;
  }
}

class Sprites {
  String backDefault;
  Null backFemale;
  String backShiny;
  Null backShinyFemale;
  String frontDefault;
  Null frontFemale;
  String frontShiny;
  Null frontShinyFemale;

  Sprites(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  Sprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }
}
