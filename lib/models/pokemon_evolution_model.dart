import 'package:pokemon_sept/models/pokemon_detail_evolution.dart';
import 'package:pokemon_sept/models/pokemon_evolution_chain.dart';
import 'package:pokemon_sept/models/pokemon_species_evolution.dart';

class PokeEvolution {
  PokeEvolutionChain pokeEvolutionChain;
  PokeDetailEvolution pokeDetailEvolution;
  PokeSpeciesEvolution pokeSpeciesEvolution;

  PokeEvolution(
      {this.pokeDetailEvolution,
      this.pokeEvolutionChain,
      this.pokeSpeciesEvolution});
}
