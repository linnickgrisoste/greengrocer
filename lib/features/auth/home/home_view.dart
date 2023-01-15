import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../../support/style/app_colors.dart';
import '../../../support/style/app_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Green',
                style: AppFonts.bold(32, AppColors.limeGreen),
              ),
              TextSpan(
                text: 'grocer',
                style: AppFonts.bold(32, AppColors.darkRed),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: AppColors.darkRed,
                badgeContent: Text(
                  '2',
                  style: AppFonts.bold(12, AppColors.white),
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColors.limeGreen,
                ),
              ),
            ),
          ),
        ],
      ),

      // Campo de pesquisa
      // Categorias
      // Grid
    );
  }
}
