import 'package:flutter/material.dart';

import '../../localization/localize.dart';
import '../support/components/custom_text_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.instance.l10n;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.vertical(top: Radius.circular(44)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 44,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(44)),
              ),
              child: Column(
                children: [
                  CustomTextFormField(
                    icon: Icons.email,
                    label: l10n.emailInputLabel,
                  ),
                  CustomTextFormField(
                    icon: Icons.lock,
                    label: l10n.passwordInputLabel,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
