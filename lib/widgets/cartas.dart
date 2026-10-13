import 'package:flutter/material.dart';

class CartasTareas extends StatelessWidget{
  final String titulo;
  final String descripcion;

  const CartasTareas({
    super.key,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          const Icon(Icons.radio_button_unchecked, color: Colors.grey),
          const SizedBox(width: 20),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style:  TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(descripcion),
                ],
              ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}