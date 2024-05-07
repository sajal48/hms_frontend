import 'package:flutter/material.dart';
import 'package:hms/app.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    '/': (_) => const App(),
    '/login': (_) => const Placeholder(),
    '/register/admin': (_) => const Placeholder(),
    '/register/trainer': (_) => const Placeholder(),
    '/register/trainee': (_) => const Placeholder(),
    '/dashboard': (_) => const Placeholder(),
    '/home': (_) => const Placeholder(),
  };
}
