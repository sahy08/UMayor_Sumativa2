import 'package:flutter/material.dart';
import 'package:flutter_umayor/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(), // en el body se encuentran los menú añadidos para moverse entre screens y salir de la aplicación.
    );
  }
}