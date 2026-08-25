
import 'package:flutter/material.dart';
import 'package:nutrifitluiggi/styles/nutrifit1_style.dart';
import 'package:nutrifitluiggi/pages/nutrifit_1pages.dart';

void main() {
runApp(const NutriFitApp());
}

class NutriFitApp extends StatelessWidget {
const NutriFitApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'NutriFit',
debugShowCheckedModeBanner: false,
theme: ThemeData(
scaffoldBackgroundColor: NutriFitColors.white,
primaryColor: NutriFitColors.primaryGreen,
colorScheme: ColorScheme.fromSeed(
seedColor: NutriFitColors.primaryGreen,
primary: NutriFitColors.primaryGreen,
surface: NutriFitColors.white,
),
useMaterial3: true,
),
home: const NutriFit1Page(),
);
}
}