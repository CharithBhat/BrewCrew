import 'package:flutter/material.dart';

import 'package:brew_crew/screens/authenticate/sign_in.dart';
import './register.dart';

class AuthenticateScreen extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<AuthenticateScreen> {
  bool showSingIn = true;

  void toggleView() {
    setState(() {
      showSingIn = !showSingIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSingIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
