// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonApi on InterfacePokemonApi, Store {
  late final _$pokemonListAtom =
      Atom(name: 'InterfacePokemonApi.pokemonList', context: context);

  @override
  List<Pokemon> get pokemonList {
    _$pokemonListAtom.reportRead();
    return super.pokemonList;
  }

  @override
  set pokemonList(List<Pokemon> value) {
    _$pokemonListAtom.reportWrite(value, super.pokemonList, () {
      super.pokemonList = value;
    });
  }

  late final _$getAllPokemonAsyncAction =
      AsyncAction('InterfacePokemonApi.getAllPokemon', context: context);

  @override
  Future<List<Pokemon>> getAllPokemon() {
    return _$getAllPokemonAsyncAction.run(() => super.getAllPokemon());
  }

  @override
  String toString() {
    return '''
pokemonList: ${pokemonList}
    ''';
  }
}
