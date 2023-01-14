import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/support/style/app_colors.dart';
import 'package:greengrocer/support/style/app_fonts.dart';

import '../../localization/localize.dart';
import '../support/components/custom_text_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.instance.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.limeGreen,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Nome do App
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Green',
                        style: AppFonts.regular(40, AppColors.white),
                      ),
                      TextSpan(
                        text: 'grocer',
                        style: AppFonts.regular(40, AppColors.darkRed),
                      ),
                    ],
                  ),
                ),

                /// Animação
                SizedBox(
                  height: 32,
                  child: DefaultTextStyle(
                    style: AppFonts.regular(24, AppColors.white),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Laticínios'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          /// Formulário
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 44,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(44)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// Email
                CustomTextFormField(
                  icon: Icons.email,
                  label: l10n.emailInputLabel,
                ),

                /// Senha
                CustomTextFormField(
                  isSecret: true,
                  icon: Icons.lock,
                  label: l10n.passwordInputLabel,
                ),

                /// Botão de entrar
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
                      'Entrar',
                      style: AppFonts.bold(18, AppColors.white),
                    ),
                  ),
                ),

                /// Esqueceu sua senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu sua senha?',
                      style: AppFonts.bold(14, AppColors.limeGreen),
                    ),
                  ),
                ),

                /// Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Ou',
                          style: AppFonts.regular(14, AppColors.black),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Botão de Criar conta
                const SizedBox(height: 8),
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Criar conta',
                      style: AppFonts.bold(18, AppColors.limeGreen),
                    ),
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
