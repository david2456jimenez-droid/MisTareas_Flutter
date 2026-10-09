import 'package:mis_tareas/widgets/cartas.dart';
import 'package:flutter/material.dart';

class InicioView extends StatelessWidget{
  const InicioView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Mis Tareas'),
      ),
      
      body: ListView(
        children: [
          CartasTareas(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}