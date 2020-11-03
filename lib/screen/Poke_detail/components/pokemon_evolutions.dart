import 'package:flutter/material.dart';
import 'package:pokemon_sept/models/pokemon_images_evolution.dart';
import 'package:pokemon_sept/models/pokemon_list_model.dart';
import 'package:pokemon_sept/services/api_provider.dart';

class PokemonEvolution extends StatelessWidget {
  final String nombrePokemon;
  PokemonListModel pokemon;
  PokemonEvolution({this.nombrePokemon});
  ApiProvider apiProvider = ApiProvider();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Row(
          children: [
            Column(
              children: [
                Text('level'),
              ],
            ),
            Column(
              children: [
                Text('Level'),
              ],
            ),
            Column(
              children: [
                Text('Level'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
