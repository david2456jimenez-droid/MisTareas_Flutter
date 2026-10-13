import 'package:flutter/material.dart';

class NuevaTarea extends StatefulWidget {
  const NuevaTarea({super.key});

  @override
  State<NuevaTarea> createState() => _NuevaTareaState();
}

class _NuevaTareaState extends State<NuevaTarea> {
  final _tituloCtrl = TextEditingController();
  final _descCtrl = TextEditingController();

  @override
  void dispose() {
    _tituloCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nueva Tarea')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _tituloCtrl,
              decoration: const InputDecoration(labelText: 'Título de la tarea'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descCtrl,
              maxLines: 4,
              decoration: const InputDecoration(labelText: 'Descripción'),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                Navigator.pop(context, {
                  'titulo': _tituloCtrl.text,
                  'descripcion': _descCtrl.text,
                });
              },
              child: const Text('Guardar tarea'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}