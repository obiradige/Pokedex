import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemom;
  const PokeInfo({Key? key,required this.pokemom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white
      ),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pokemom.name),
            _buildInformationRow('Height', pokemom.height),
            _buildInformationRow('Weight', pokemom.weight),
            _buildInformationRow('Spawn Time ', pokemom.spawnTime),
            _buildInformationRow('Weakness', pokemom.weaknesses),
            _buildInformationRow('Pre Evolution', pokemom.prevEvolution),
            _buildInformationRow('Next Evolution', pokemom.nextEvolution),
          ],
        ),
      ),
    );
  }
  _buildInformationRow(String label, dynamic value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: Constants.getPokeInfoLabelTextStyle(),),
        if(value is List && value.isNotEmpty)
          Text(value.join(' , '),style:Constants.getPokeInfoTextStyle(),)
        else if(value == null)
          Text('Not available',style: Constants.getPokeInfoTextStyle(),)
        else
          Text(value,style: Constants.getPokeInfoTextStyle(),)
      ],
    );
  }
}
