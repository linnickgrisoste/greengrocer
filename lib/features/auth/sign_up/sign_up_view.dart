import 'package:flutter/material.dart';
import 'package:greengrocer/features/support/components/custom_text_form_field.dart';
import 'package:greengrocer/support/style/app_fonts.dart';

import '../../../support/style/app_colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.limeGreen,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Cadastro',
                      style: AppFonts.regular(36, AppColors.white),
                    ),
                  ),
                ),

                /// Formulário
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    children: const [
                      CustomTextFormField(
                        icon: Icons.email,
                        label: 'Email',
                      ),
                      CustomTextFormField(
                        icon: Icons.lock,
                        label: 'Senha',
                      ),
                      CustomTextFormField(
                        icon: Icons.person,
                        label: 'Nome',
                      ),
                      CustomTextFormField(
                        icon: Icons.phone,
                        label: 'Celular',
                      ),
                      CustomTextFormField(
                        icon: Icons.file_copy,
                        label: 'CPF',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
