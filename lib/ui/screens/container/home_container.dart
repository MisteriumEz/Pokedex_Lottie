import 'package:flutter/material.dart';
import 'package:pokedex_lottie/api/pokemon_api.dart';
import 'package:pokedex_lottie/consts/errors/error_message.dart';
import 'package:pokedex_lottie/models/pokemon.dart';
import 'package:pokedex_lottie/ui/screens/home/pages/home_error.dart';
import 'package:pokedex_lottie/ui/screens/home/pages/home_loading.dart';
import 'package:pokedex_lottie/ui/screens/home/pages/home_page.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.pokeApi});

  final PokemonApi pokeApi;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: pokeApi.getAllPokemon(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const HomeLoading();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const HomeError(
              error: ("Ocorreu um erro enquanto buscava os pokemons"),
            );
          } else {
            return HomePage(
              pokeApi: pokeApi,
            );
          }
        }
        return Container();
      }),
    );
  }
}
