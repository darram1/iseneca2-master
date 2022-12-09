import 'package:iseneca/models/convivencia.dart';
import 'package:iseneca/models/models.dart';
import 'package:flutter/material.dart';
import 'package:iseneca/screens/alumnos_screen.dart';
import 'package:iseneca/screens/convivencia_screen.dart';
import 'package:iseneca/screens/expulsados_screen.dart';
import 'package:iseneca/screens/profesor_screen.dart';
import 'package:iseneca/screens/profesores_screen.dart';
import 'package:iseneca/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'loging';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'login',
        icon: Icons.inbox,
        name: 'Login',
        screen: const LoginScreen()),
    MenuOption(
        route: 'profesores',
        icon: Icons.inbox,
        name: 'Profesores',
        screen: const ProfesoresScreen()),
    MenuOption(
        route: 'profesor',
        icon: Icons.inbox,
        name: 'Profesor',
        screen: const ProfesorScreen()),
     MenuOption(
        route: 'alumnos',
        icon: Icons.inbox,
        name: 'Alumnos',
        screen: const AlumnosScreen()),
    MenuOption(
        route: 'expulsados',
        icon: Icons.inbox,
        name: 'Expulsados',
        screen: const ExpulsadosScreen()),
    MenuOption(
        route: 'convivencia',
        icon: Icons.inbox,
        name: 'Convivencia',
        screen: const ConvivenciaScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'login': (BuildContext context) => const LoginScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListViewlScreen(),
    'listView2': (BuildContext context) => const ListViewl2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };
  */

  /*static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const LoginScreen());
  }*/
}
