import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_sept/models/pokemon_about_detail_model.dart';
import 'package:pokemon_sept/models/pokemon_about_lacation_model.dart';
import 'package:pokemon_sept/models/pokemon_about_model.dart';
import 'package:pokemon_sept/models/pokemon_about_species_model.dart';
import 'package:pokemon_sept/models/pokemon_detail_evolution.dart';
import 'package:pokemon_sept/models/pokemon_evolution_chain.dart';
import 'package:pokemon_sept/models/pokemon_evolution_model.dart';
import 'package:pokemon_sept/models/pokemon_images_evolution.dart';
import 'package:pokemon_sept/models/pokemon_list_model.dart';
import 'package:pokemon_sept/models/pokemon_moves_detail_model.dart';
import 'package:pokemon_sept/models/pokemon_species_evolution.dart';
import 'package:pokemon_sept/models/pokemon_stats_detail_model.dart';
import 'package:pokemon_sept/models/pokemon_stats_model.dart';
import 'package:pokemon_sept/models/pokemon_stats_species_model.dart';

import '../models/pokemon_list_model.dart';

class ApiProvider {
  Dio dio = Dio();
  Future<List<PokemonListModel>> obtenerListaPokemon() async {
    List<PokemonListModel> lista = [];
    try {
      Response resp =
          await dio.get('https://pokedexvuejs.herokuapp.com/pokedexdb');
      final pokemones = PokemonListResponse.fromJsonList(resp.data);
      lista = pokemones.items;
    } catch (e) {}
    return lista;
  }

  Future<PokemonAboutModel> obtenerInfoAboutPokemon(String nombrePoke) async {
    var pokeAbout = PokemonAboutModel();
    try {
      Response respA =
          await dio.get('https://pokeapi.co/api/v2/pokemon/$nombrePoke');
      final pokeDetail = PokeAboutDetail.fromJson(respA.data);
      Response respB = await dio
          .get('https://pokeapi.co/api/v2/pokemon/${pokeDetail.id}/encounters');
      final pokeListLocation =
          PokemonAboutLocationListModel.fromJsonList(respB.data);

      Response respC = await dio
          .get('https://pokeapi.co/api/v2/pokemon-species/${pokeDetail.id}');
      final pokeSoecies = PokeAboutSpecies.fromJson(respC.data);
      pokeAbout = PokemonAboutModel(
          pokeDetails: pokeDetail,
          pokeLocations: pokeListLocation.items,
          pokeSpecies: pokeSoecies);
    } catch (e) {}
    return pokeAbout;
  }

  Future<PokemonStatsModel> obtenerInfoStatsPokemon(String nombrePoke) async {
    var pokeStats = PokemonStatsModel();
    try {
      Response respA =
          await dio.get('https://pokeapi.co/api/v2/pokemon/$nombrePoke');
      final pokeStatsDetail = PokeStatsDetail.fromJson(respA.data);
      Response respB = await dio.get(
          'https://pokeapi.co/api/v2/pokemon-species/${pokeStatsDetail.id}');
      final pokeStatsSpecies = PokeStatsSpecies.fromJson(respB.data);

      pokeStats = PokemonStatsModel(
          pokeStatsDetail: pokeStatsDetail, pokeStatsSpecies: pokeStatsSpecies);
    } catch (e) {}

    return pokeStats;
  }

  Future<PokeEvolution> obtenerInfoEvaluationPokemon(String nombrePoke) async {
    var pokeEvo = PokeEvolution();
    try {
      Response respA =
          await dio.get('https://pokeapi.co/api/v2/pokemon/$nombrePoke');
      final pokeDetailEvolution = PokeDetailEvolution.fromJson(respA.data);
      Response respB = await dio.get(
          'https://pokeapi.co/api/v2/pokemon-species/${pokeDetailEvolution.id}/');
      final pokeSpeciesEvolution = PokeSpeciesEvolution.fromJson(respB.data);
      Response respC = await dio.get(
          'https://pokeapi.co/api/v2/evolution-chain/${pokeSpeciesEvolution.id}/');
      final pokeEvolutionChain = PokeEvolutionChain.fromJson(respC.data);

      pokeEvo = PokeEvolution(
        pokeDetailEvolution: pokeDetailEvolution,
        pokeSpeciesEvolution: pokeSpeciesEvolution,
        pokeEvolutionChain: pokeEvolutionChain,
      );
    } catch (e) {}
    return pokeEvo;
  }

  Future<String> obtenerImagenPokemon(String nombrePoke) async {
    String imagen;
    List<PokemonListModel> listaPokemon = [];
    try {
      Response resp =
          await dio.get('https://pokedexvuejs.herokuapp.com/pokedexdb');
      final pokemones = PokemonListResponse.fromJsonList(resp.data);
      listaPokemon = pokemones.items;
      for (var i = 0; i < listaPokemon.length; i++) {
        if (listaPokemon[i].name.toLowerCase() == nombrePoke) {
          imagen = listaPokemon[i].image;
          break;
        }
      }
    } catch (e) {}
    return imagen;
  }

  Future<PokeMovesDetail> obtenerMovimientosPokemon(String nombrePoke) async {
    var pokeMovesModel = PokeMovesDetail();

    try {
      Response respA =
          await dio.get('https://pokeapi.co/api/v2/pokemon/$nombrePoke');
      pokeMovesModel = PokeMovesDetail.fromJson(respA.data);
    } catch (e) {}
    return pokeMovesModel;
  }
}
