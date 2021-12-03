import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeImgBall extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeImgBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            _imageUrl,
            width: UIHelper.calculatePokeBall(),
            height: UIHelper.calculatePokeBall(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment : Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            width: UIHelper.calculatePokeBall(),
            height: UIHelper.calculatePokeBall(),
            fit: BoxFit.fitHeight,
            placeholder: (context ,url) => const CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
