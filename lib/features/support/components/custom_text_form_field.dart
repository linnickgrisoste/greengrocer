import 'package:flutter/material.dart';

import '../../../support/style/app_colors.dart';
import '../../../support/style/app_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;

  const CustomTextFormField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = false;

  @override
  void initState() {
    obscureText = widget.isSecret;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        style: AppFonts.regular(16, AppColors.black),
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
