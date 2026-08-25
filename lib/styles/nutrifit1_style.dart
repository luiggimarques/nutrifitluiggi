import 'package:flutter/material.dart';

class NutriFitColors {
  // Cores Primárias (Verde e Branco)
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color darkGreen = Color(0xFF1B4D3E);
  static const Color lightGreen = Color(0xFFE8F5E9);
  static const Color accentGreen = Color(0xFF81C784);

  // Fundos e Neutros
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF8FAF8);
  static const Color cardBorder = Color(0xFFE2ECE3);

  // Textos
  static const Color textDark = Color(0xFF0F291E);
  static const Color textBody = Color(0xFF4A5568);
  static const Color textMuted = Color(0xFF94A3B8);
}

class NutriFitStyles {
  static const TextStyle brandTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: NutriFitColors.darkGreen,
    letterSpacing: -0.5,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: NutriFitColors.primaryGreen,
    letterSpacing: 1.2,
  );

  static const TextStyle positioningQuote = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: NutriFitColors.textDark,
    height: 1.3,
  );

  static const TextStyle serviceName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: NutriFitColors.textDark,
  );
}