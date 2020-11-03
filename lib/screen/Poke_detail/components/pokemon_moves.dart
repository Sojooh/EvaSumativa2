import 'package:flutter/material.dart';
import 'package:pokemon_sept/helpers/colorTheme.dart';
import 'package:pokemon_sept/models/pokemon_moves_detail_model.dart';
import 'package:pokemon_sept/services/api_provider.dart';

class PokemonMoves extends StatelessWidget {
  final String nombrePokemon;
  PokemonMoves({this.nombrePokemon});
  ApiProvider apiProvider = ApiProvider();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<PokeMovesDetail>(
        future: apiProvider.obtenerMovimientosPokemon(nombrePokemon),
        builder:
            (BuildContext context, AsyncSnapshot<PokeMovesDetail> snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data.name);
            return Container(
              child: _movimientosPokemon(snapshot, context),
            );
          } else {
            return Column(
              children: [CircularProgressIndicator()],
            );
          }
        },
      ),
    );
  }

  Widget _movimientosPokemon(
      AsyncSnapshot<PokeMovesDetail> snapshot, BuildContext context) {
    return Container(
      child: Expanded(
        flex: 3,
        child: Container(
          child: Wrap(
            children: snapshot.data.moves
                .map(
                  (movimientos) => Container(
                    padding: EdgeInsets.only(right: 10),
                    child: (Chip(
                      label: Text(
                        movimientos.move.name,
                      ),
                      backgroundColor:
                          setSecondaryColor(snapshot.data.types[0].type.name),
                    )),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
