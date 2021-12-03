import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/widgets/app_title.dart';

import 'package:pokedex/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context,orientation)=> Column(
          children:  [
            SizedBox(height: 20.h,),
            AppTitle(),
            Expanded(child: PokemonList())
          ],
        ),
      ),
    );
  }
}
