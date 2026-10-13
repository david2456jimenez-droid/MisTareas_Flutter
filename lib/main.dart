import 'package:flutter/material.dart';
import 'package:mis_tareas/rutas/rutas.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mis Tareas',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Rutas.rutas,
    );
  }
}