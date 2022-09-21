import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_lottie/consts/api_consts.dart';
import 'package:pokedex_lottie/consts/errors/error_message.dart';

import '../models/pokemon.dart';

part 'pokemon_api.g.dart';

abstract class InterfacePokemonApi with Store {
  @observable
  List<Pokemon> pokemonList = [];

  @action
  Future<List<Pokemon>> getAllPokemon() async {
    Dio dio = Dio();

    try {
      final response = await dio.get(ApiConsts.allPokemonsURL);
      final json = jsonDecode(response.data);
      final List<dynamic> list = json['pokemon'];
      pokemonList = list.map((e) => Pokemon.fromJson(e)).toList();
      return list.map((e) => Pokemon.fromJson(e)).toList();
    } on Exception catch (_) {
      throw ErrorMessage(
          message: "Ocorreu um erro enquanto buscava os pokemons");
    }
  }
}

class PokemonApi = InterfacePokemonApi with _$PokemonApi;
