import 'package:flutter/material.dart';
import 'package:greengrocer/features/auth/home/home_view.dart';

import '../../support/style/app_colors.dart';

class BottomNavigationVIew extends StatefulWidget {
  const BottomNavigationVIew({super.key});

  @override
  State<BottomNavigationVIew> createState() => _BottomNavigationVIewState();
}

class _BottomNavigationVIewState extends State<BottomNavigationVIew> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeView(),
          Container(color: AppColors.black),
          Container(color: AppColors.darkRed),
          Container(color: AppColors.limeGreen),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.limeGreen,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white.withAlpha(100),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
