import 'package:flutter/material.dart';
import 'package:flutter_girls_planet/providers/usuario.dart';
import 'package:provider/provider.dart';

class PaginaPrincipal extends StatelessWidget {
  final TextEditingController _controller= TextEditingController();
  final snackBar=const SnackBar(content: Text("Introduce tu nickname"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/logogp999.png',
                  height: 200.0,
                  width: 200.0,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: 'Escribe tu nick'
                )
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 300,
              color: Colors.purple,
              child: IconButton(
                onPressed: () {
                  if(_controller.text==""){
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }else{
                    Provider.of<Usuario>(context, listen: false).nombre=_controller.text;
                    Navigator.of(context).pushReplacementNamed('votacion');
                  }
                },
                icon: const Icon(Icons.arrow_right_alt_outlined, color: Colors.white),
              )
            ),
          ],),
        )
      );
  }
}