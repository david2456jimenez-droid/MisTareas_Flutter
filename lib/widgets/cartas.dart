import 'package:flutter/material.dart';

class CartasTareas extends StatelessWidget{
  const CartasTareas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),

      child: const Row(
        children: [
          Icon(Icons.radio_button_unchecked, color: Colors.grey),
          SizedBox(width: 20),
          
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Completar Practicas en flutter',
                    style:  TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Implementar Rutas Nombradas, Widgets modulares y navegacion...')
                ],
              ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}