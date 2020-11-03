import 'package:flutter/material.dart';
import 'package:pokemon_sept/models/pokemon_list_model.dart';
import 'package:pokemon_sept/screen/Poke_detail/components/poke_detail_screen.dart';
import 'package:pokemon_sept/screen/home/home_screen.dart';
import 'package:pokemon_sept/services/api_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen(),
        'poke-detail': (BuildContext context) => PokemonDetailScreen(),
      },
    );
  }
}
