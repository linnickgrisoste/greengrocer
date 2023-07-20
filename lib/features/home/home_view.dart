import 'package:flutter/material.dart';
import 'package:greengrocer/support/components/item_tile.dart';

import '../../support/components/category_tile.dart';
import '../../support/style/app_colors.dart';
import '../../support/style/app_fonts.dart';
import '../models/item_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCategory = 'Frutas';

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
                backgroundColor: AppColors.darkRed,
                label: Text(
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
                  onPressed: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  category: categories[index],
                  isSelected: categories[index] == selectedCategory,
                );
              },
            ),
          ),
          //* Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 9 / 12,
              ),
              itemCount: items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: items[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
