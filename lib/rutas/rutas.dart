import 'package:flutter/material.dart';
import 'package:mis_tareas/vistas/inicio.dart';
import 'package:mis_tareas/vistas/nueva_tarea.dart';

class Rutas {
  static const String inicio = '/';
  static const String nueva = '/nueva';

  static Map<String, WidgetBuilder> get rutas => {
    inicio: (context) => PantallaTareas(),
    nueva: (context) => const NuevaTarea(),
  };
}