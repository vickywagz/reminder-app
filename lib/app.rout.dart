import 'package:go_router/go_router.dart';
import 'package:reminder_app/dashboard.dart';
import 'package:reminder_app/login_page.dart';
import 'package:reminder_app/register_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegistrationPage(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const Dashboard(),
    ),
  ],
);
