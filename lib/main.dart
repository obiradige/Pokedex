import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/pages/home_page.dart';
import 'package:pokedex/services/pokedex_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData();
    return ScreenUtilInit(
      designSize: const Size(414,896),
      builder : () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}


