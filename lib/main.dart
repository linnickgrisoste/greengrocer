import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localization.dart';

import 'features/auth/sign_in/sign_in_view.dart';
import 'localization/localize.dart';
import 'support/style/app_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => Localize.instance.of(context).appTitle,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: Localization.localizationsDelegates,
      supportedLocales: Localization.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: AppColors.white.withAlpha(190),
      ),
      home: const SignInView(),
    );
  }
}
