import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeNameType extends StatelessWidget {
  PokemonModel pokemon;
  PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Text(pokemon.name ?? '',style: Constants.pokemonTextStyle(),)),
              Text('#${pokemon.num}',style: Constants.pokemonTextStyle(),)
            ],
          ),
          SizedBox(height: 0.03.sh,),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '',style: Constants.pokemonTypeChipTextStyle(),),)
        ],
      ),
    );
  }
}
