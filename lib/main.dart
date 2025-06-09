import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wtg_employee_app/register/pages/register_page.dart';
import 'app_routes.dart';
import 'home/pages/home_page.dart';
import 'login/pages/login_page.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp( MyApp(initialRoute: AppRoutes.login.path ));
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    // Retrieves the default theme for the platform
    //TODO: Definir tipografias
    //TextTheme textTheme = createTextTheme(context, "Syne", "Lexend");
    //TODO: Crear un tema con los colores correspondientes
    //AppTheme theme = AppTheme(textTheme);

    return MaterialApp(
        title: 'WTG',
        // theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        initialRoute: initialRoute,
        routes: {
          AppRoutes.login.path: (context) => const LoginPage(),
          AppRoutes.register.path: (context) => const RegisterPage(),
          AppRoutes.home.path: (context) => const HomePage(),
        },
    );
  }
}