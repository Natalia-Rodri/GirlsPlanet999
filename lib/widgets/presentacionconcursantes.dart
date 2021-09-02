import 'package:flutter/material.dart';

class ContenedorConcursantes extends StatelessWidget {

  const ContenedorConcursantes(this.nombre,this.rutaImagen);

  final String nombre;
  final String rutaImagen;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black38, ),
      padding: EdgeInsets.only(top: 7),
      width: MediaQuery.of(context).size.width/3.3,
      child: Column(
      children: [
        ClipRect(child: ClipOval(child:Image.network(rutaImagen, height: 160,),)),
        SizedBox(height: 7,),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white54, ),
          width: MediaQuery.of(context).size.width/3.3,
          child: Center(child: Text(nombre))
        ),
        ])
    );
  }
}