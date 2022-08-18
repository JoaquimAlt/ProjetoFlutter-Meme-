import 'package:flutter/material.dart';
import 'package:primeiro_app/app_controller.dart';
import 'home_page.dart';
import 'login.dart';

class AppWidget extends StatelessWidget {
  final String tittle;

  const AppWidget({Key? key, required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) => const HomePage(),
            });
      },
    );
  }
}
