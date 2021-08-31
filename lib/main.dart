import 'package:flutter/material.dart';
import 'package:flutter_girls_planet/pages/paginaprincipal.dart';
import 'package:flutter_girls_planet/pages/paginavotacion.dart';
import 'package:flutter_girls_planet/providers/usuario.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Usuario(""),
      child: MaterialApp(
        title: 'Girls Planet 999',
        routes: {
          'principal': (context) => PaginaPrincipal(),
          'votacion': (context) => const PaginaVotacion(),
        },
        home: PaginaPrincipal(),
      ),
    );
  }
}