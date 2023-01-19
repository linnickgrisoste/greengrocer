import 'package:flutter/material.dart';
import 'package:greengrocer/support/components/custom_text_form_field.dart';
import 'package:greengrocer/support/style/app_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../support/style/app_colors.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '## # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.limeGreen,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                Column(
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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const CustomTextFormField(
                            icon: Icons.email,
                            label: 'Email',
                          ),
                          const CustomTextFormField(
                            isSecret: true,
                            icon: Icons.lock,
                            label: 'Senha',
                          ),
                          const CustomTextFormField(
                            icon: Icons.person,
                            label: 'Nome',
                          ),
                          CustomTextFormField(
                            icon: Icons.phone,
                            label: 'Celular',
                            inputFormatters: [phoneFormatter],
                          ),
                          CustomTextFormField(
                            icon: Icons.file_copy,
                            label: 'CPF',
                            inputFormatters: [cpfFormatter],
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Cadastrar',
                                  style: AppFonts.bold(
                                    18,
                                    AppColors.white,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
