import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/AuthController.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, auth, _) {
        auth.checkLoggedInStatus();
        Future.delayed(Duration.zero, () {
          if (auth.isLoggedIn) {
            Navigator.pushReplacementNamed(context, "/dashboard");
          } else {
            Navigator.pushReplacementNamed(context, "/home");
          }
        });

        return const Scaffold();
      },
    );
  }
}
