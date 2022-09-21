import 'package:flutter/material.dart';
import 'package:pokedex_lottie/api/pokemon_api.dart';
import 'package:pokedex_lottie/ui/screens/container/home_container.dart';
import 'package:pokedex_lottie/ui/screens/home/pages/home_loading.dart';
import 'package:pokedex_lottie/ui/screens/home/pages/home_page.dart';
import 'package:pokedex_lottie/ui/screens/pokedex/routes/route.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      home: PokedexRoute(
        pokeApi: PokemonApi(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
