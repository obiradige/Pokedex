import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeApi{
  static const _url = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData() async{
    List<PokemonModel> _list = [];
    var result = await Dio().get(_url);
    var pokelist = jsonDecode(result.data)['pokemon'];
    if(pokelist is List){
      _list = pokelist.map((e) => PokemonModel.fromJson(e)).toList();
    }else{
      return [];
    }
    return _list;
  }
}