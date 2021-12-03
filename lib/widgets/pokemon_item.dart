import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/detail_page.dart';
import 'package:pokedex/widgets/poke_img_ball.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonItem ({Key? key,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w)
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: Colors.red.shade200,
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? 'N/A',style: Constants.pokemonTextStyle(),),
              Chip(label: Text(pokemon.type![0])),
              Expanded(child: PokeImgBall(pokemon : pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
