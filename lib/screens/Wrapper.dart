import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:brew_crew/screens/home/home_screen.dart';
import 'package:brew_crew/screens/authenticate/authenticate_screen.dart';
import '../models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // Either return home screen or authentication screen
    if (user == null) {
      return AuthenticateScreen();
    } else {
      return HomeScreen();
    }
  }
}
