import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widgets/poke_info.dart';
import 'package:pokedex/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  PokemonModel pokemon;

  DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imageUrl = 'images/pokeball.png';
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: IconButton(
                  iconSize: 24.h,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(
              pokemon: pokemon,
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    _imageUrl,
                    height: 0.15.sh,
                    fit: BoxFit.fitHeight,
                  ),
                  right: 0,
                  top: 0,
                ),
                Positioned(
                    top: 0.12.sh,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: PokeInfo(pokemom: pokemon)
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(imageUrl: pokemon.img ?? ' ',height: 0.24.sh,fit: BoxFit.fitHeight,),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
