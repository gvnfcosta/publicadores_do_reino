import 'package:publicadoresdoreino/src/pages/base/base_screen.dart';

import '/src/pages/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/auth.dart';

class AuthOrHomePage extends StatelessWidget {
  const AuthOrHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return FutureBuilder(
      future: auth.tryAutoLogin(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.error != null) {
          return const Center(
            child: Text('Ocorreu um erro!'),
          );
        } else {
          return auth.isAuth ? const BaseScreen() : const SignInScreen();
        }
      },
    );
  }
}
