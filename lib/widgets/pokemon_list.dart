import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/widgets/pokemon_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonlistFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonlistFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonlistFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _mylist = snapshot.data!;

          return GridView.builder(
            itemCount: _mylist.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) =>
                  PokemonItem(pokemon: _mylist[index]));
        } else if (snapshot.hasError) {
          return Text('Veri gelmedi');
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
