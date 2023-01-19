import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../support/components/category_tile.dart';
import '../../support/style/app_colors.dart';
import '../../support/style/app_fonts.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<String> categories = [
    'Frutas',
    'Grãos',
    'Verduras',
    'Temperos',
    'Cereais',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
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
      body: Column(
        children: [
          //* Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                isDense: true,
                hintText: 'Pesquise aqui',
                hintStyle: AppFonts.regular(14, AppColors.black),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.darkRed,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 24),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemBuilder: (_, index) {
                return CategoryTile(
                  category: categories[index],
                  isSelected: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
