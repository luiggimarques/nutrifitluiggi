import 'package:flutter/material.dart';
import 'package:nutrifitluiggi/styles/nutrifit1_style.dart';

class NutriFit1Page extends StatelessWidget {
  const NutriFit1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NutriFitColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Cabeçalho com a Logo em WebP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/nutrifit.webp',
                    height: 48,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text(
                        'NutriFit',
                        style: NutriFitStyles.brandTitle,
                      );
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: NutriFitColors.lightGreen,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: NutriFitColors.accentGreen),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 14,
                          color: NutriFitColors.darkGreen,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'App Mobile',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: NutriFitColors.darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // 2. Foto da Parmegiana em WebP + Frase de Posicionamento
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 15,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/parmegiana.webp',
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 220,
                            color: NutriFitColors.lightGreen,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.restaurant_menu,
                                  size: 48,
                                  color: NutriFitColors.primaryGreen,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Imagem parmegiana.webp',
                                  style: TextStyle(
                                    color: NutriFitColors.darkGreen,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: NutriFitColors.white.withOpacity(0.92),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: NutriFitColors.primaryGreen,
                              child: Icon(
                                Icons.favorite,
                                color: NutriFitColors.white,
                                size: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Alimentação Consciente & Prática',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: NutriFitColors.darkGreen,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Frase de Posicionamento
              const Text(
                'Sua saúde e nutrição em perfeita sintonia.',
                style: NutriFitStyles.positioningQuote,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Transformamos seu estilo de vida com acompanhamento inteligente e planos sob medida.',
                style: TextStyle(
                  fontSize: 14,
                  color: NutriFitColors.textBody,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              // 3. Título da Seção de Serviços
              const Row(
                children: [
                  Text(
                    'NOSSOS SERVIÇOS',
                    style: NutriFitStyles.sectionTitle,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      color: NutriFitColors.cardBorder,
                      thickness: 1,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              // 4. Lista dos Serviços
              const ServiceCardItem(
                icon: Icons.medical_services_outlined,
                title: 'Consulta Nutricional',
              ),
              const ServiceCardItem(
                icon: Icons.assignment_outlined,
                title: 'Plano Alimentar Personalizado',
              ),
              const ServiceCardItem(
                icon: Icons.calendar_today_outlined,
                title: 'Acompanhamento Semanal',
              ),
              const ServiceCardItem(
                icon: Icons.monitor_weight_outlined,
                title: 'Bioimpedância',
              ),
              const ServiceCardItem(
                icon: Icons.menu_book_outlined,
                title: 'Receitas Fit',
              ),

              const SizedBox(height: 20),

              // Botão Principal
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: NutriFitColors.primaryGreen,
                  foregroundColor: NutriFitColors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Conhecer o NutriFit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCardItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const ServiceCardItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: NutriFitColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: NutriFitColors.cardBorder),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: NutriFitColors.lightGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: NutriFitColors.primaryGreen,
              size: 20,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: NutriFitStyles.serviceName,
            ),
          ),
          const Icon(
            Icons.check_circle_outline,
            color: NutriFitColors.accentGreen,
            size: 20,
          ),
        ],
      ),
    );
  }
}