import 'package:flutter/material.dart';
import 'package:pokemon_sept/models/pokemon_about_detail_model.dart';
import 'package:pokemon_sept/models/pokemon_about_lacation_model.dart';
import 'package:pokemon_sept/models/pokemon_about_species_model.dart';

class PokemonAboutModel {
  PokeAboutDetail pokeDetails;
  PokeAboutSpecies pokeSpecies;
  List<PokeAboutLocation> pokeLocations;

  PokemonAboutModel({this.pokeDetails, this.pokeSpecies, this.pokeLocations});
}
