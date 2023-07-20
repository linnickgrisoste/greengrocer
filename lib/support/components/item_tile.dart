import 'package:flutter/material.dart';
import 'package:greengrocer/features/models/item_model.dart';

import '../style/app_colors.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  const ItemTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //*Imagem
            Expanded(child: Image.asset(item.imageUrl)),

            //*Nome
            Text(
              item.itemName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            //*Preço - Unidade de medida
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.limeGreen,
                  ),
                ),
                Text(
                  '/${item.unit}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
