import 'package:dart_fusion/dart_fusion.dart';
import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_landing_page/env/env.dart';
import 'package:go_router/go_router.dart';
import 'package:scroll_to_id/scroll_to_id.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:seo/seo.dart';
import 'package:url_launcher/url_launcher.dart';

part 'pages/home_page.dart';
part 'pages/home_faq_section.dart';
part 'pages/home_features_section.dart';
part 'pages/home_pricing_section.dart';
part 'pages/home_starter_section.dart';
part 'models/home_pricing_model.dart';

  // Função para abrir URLs externas
Future<void> _launchURL(int index) async {
  final urls = [
    'https://forms.gle/Mhrj6rB5pt9FPFF46', // Google Forms - Propostas
    'https://www.instagram.com/chapa52.crt07', // Instagram
  ];
  
  final url = Uri.parse(urls[index]);
  
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication, // Abre no navegador/app externo
    );
  } else {
    throw 'Não foi possível abrir: $url';
  }
}