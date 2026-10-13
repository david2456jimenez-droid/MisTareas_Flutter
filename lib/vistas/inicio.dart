import 'package:flutter/material.dart';
import 'package:mis_tareas/rutas/rutas.dart';
import 'package:mis_tareas/widgets/cartas.dart';

class PantallaTareas extends StatefulWidget {
  const PantallaTareas({super.key});

  @override
  State<PantallaTareas> createState() => _PantallaTareasState();
}

class _PantallaTareasState extends State<PantallaTareas> {
  final List<Map<String, String>> tareas = [
    {
      'titulo': 'Completar prácticas en Flutter',
      'descripcion': 'Implementar rutas nombradas, widgets modulares y navegación...',
    },
    {
      'titulo': 'Diseñar interfaz Material 3',
      'descripcion': 'Definir paleta índigo, tarjetas elevadas y botones de acción...',
    },
    {
      'titulo': 'Revisar documentación de Navigator',
      'descripcion': 'Estudiar el comportamiento de pushNamed, pop y el paso de...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Tareas')),
      body: ListView(
        children: [
          for (final tarea in tareas)
            CartasTareas(
              titulo: tarea['titulo']!,
              descripcion: tarea['descripcion']!,
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          final resultado = await Navigator.pushNamed(context, Rutas.nueva);

          if (!mounted) return;

          if (resultado != null) {
            final nueva = Map<String, String>.from(resultado as Map);
            setState(() => tareas.add(nueva));
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}