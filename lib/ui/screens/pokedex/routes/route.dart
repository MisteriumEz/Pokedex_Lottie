import 'package:flutter/material.dart';
import 'package:pokedex_lottie/api/pokemon_api.dart';
import 'package:pokedex_lottie/ui/screens/container/home_container.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({super.key, required this.pokeApi});
  final PokemonApi pokeApi;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => HomeContainer(
                pokeApi: pokeApi,
              ),
            );
          case '/detalhes':
            return MaterialPageRoute(
              builder: (context) => HomeContainer(
                pokeApi: pokeApi,
              ),
            );
        }
      },
    );
  }
}
