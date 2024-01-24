import 'package:flutter/material.dart';
import 'package:avalia_ai/shared/styles/colors.dart';
import 'package:avalia_ai/view/initial_page.dart';
import 'package:avalia_ai/view/auth_page.dart';
import 'package:avalia_ai/view/homepage.dart';
import 'package:avalia_ai/view/professors_page.dart';
import 'package:avalia_ai/view/evaluations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avalia Aí',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AVAIColors.royalBlue),
        useMaterial3: true,
      ),
      home: const EvaluationsPage(),
    );
  }
}
