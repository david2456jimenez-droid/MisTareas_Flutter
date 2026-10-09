import 'package:flutter/material.dart';
import '../vistas/inicio.dart';

class Rutas {
  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
      '/': (context) => const InicioView(),
    };
  }
}