import 'package:flutter/material.dart';

class ContenedorConcursantes extends StatelessWidget {

  const ContenedorConcursantes(@required this.nombre,@required this.rutaImagen);

  final String nombre;
  final String rutaImagen;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3.5,
      color: Colors.black38,
      child: Column(
      children: [
        CircleAvatar(backgroundColor: Colors.transparent,child: ClipOval(child: Image.network(rutaImagen)), radius: 70),
        FittedBox(fit: BoxFit.fitWidth, child: Text(nombre)),])
    );
  }
}