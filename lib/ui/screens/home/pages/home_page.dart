import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_lottie/api/pokemon_api.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.pokeApi});
  final PokemonApi pokeApi;

  @override
  Widget build(BuildContext context) {
    pokeApi.getAllPokemon();
    return Observer(builder: (_) {
      return Scaffold(
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: Text(pokeApi.pokemonList[index].name),
          );
        }),
      );
    });
  }
  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Observer(builder: (_) {
          return Text(
            '${counterController.counter}',
            style: const TextStyle(color: Colors.black, fontSize: 40),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }*/
}
