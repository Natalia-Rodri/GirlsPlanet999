import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_girls_planet/concursantes/listaconcursantes.dart';
import 'package:flutter_girls_planet/providers/usuario.dart';
import 'package:flutter_girls_planet/widgets/presentacionconcursantes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginaVotacion extends StatelessWidget {
  const PaginaVotacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Concursantes concursantes= Concursantes();
    return Scaffold(
        appBar: AppBar(
          title: Text('Hola ' + Provider.of<Usuario>(context, listen: false).nombre),
          backgroundColor: Colors.purple,
        ),
        body: Center(child: ListView(
          children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/girlsplanetfondo.jpg"),
                fit: BoxFit.cover,
              )
            ),
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: const Alignment(0, 0.2),
              color: Colors.black45, 
              child: 
                Text("Elige hasta nueve concursantes \n independientemente de su nacionalidad", 
                style: GoogleFonts.dancingScript(fontSize: 18,color: Colors.white))),
          ),
          Container(
            color: Colors.white,
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.purple,
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Text("Concursantes coreanas \n", style: GoogleFonts.dancingScript(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Container(
            color: Colors.white,
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.purple,
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 3,
              children: 
                List.generate(33, (index) {
                    return Center(
                    child: ContenedorConcursantes(
                      concursantes.nombresConcursantesCoreanas[index],
                      concursantes.fotosConcursantesCoreanas[index]
                     
                      ),
                  );
                  
                } )
                
              ,)
          ),
        ],),)
    );
  }
}