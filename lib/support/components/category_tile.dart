import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
    required this.isSelected,
  });

  final String category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColors.limeGreen : Colors.transparent,
        ),
        child: Text(
          category,
          style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.limeGreen,
              fontSize: isSelected ? 16 : 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
