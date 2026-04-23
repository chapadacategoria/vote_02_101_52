part of '../env.dart';

class NavigationModel extends DModel {
  const NavigationModel({
    required this.id,
    required this.name,
    required this.activeIcon,
    required this.inactiveIcon,
  });

  final String id, name, activeIcon, inactiveIcon;

  static const NavigationModel starter = NavigationModel(
    id: 'get-started',
    name: 'Início',
    activeIcon: 'assets/image/icon_active_home.svg',
    inactiveIcon: 'assets/image/icon_inactive_home.svg',
  );

  static const NavigationModel features = NavigationModel(
    id: 'features',
    name: 'Candidatos',
    activeIcon: 'assets/image/icon_active_features.svg',
    inactiveIcon: 'assets/image/icon_inactive_features.svg',
  );

  static const NavigationModel pricing = NavigationModel(
    id: 'pricing',
    name: 'Queremos te escutar',
    activeIcon: 'assets/image/icon_active_pricing.svg',
    inactiveIcon: 'assets/image/icon_inactive_pricing.svg',
  );

  static const NavigationModel faq = NavigationModel(
    id: 'faq',
    name: 'Propostas',
    activeIcon: 'assets/image/icon_active_faq.svg',
    inactiveIcon: 'assets/image/icon_inactive_faq.svg',
  );
}
