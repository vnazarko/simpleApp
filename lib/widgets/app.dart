import 'package:flutter/material.dart';
import 'package:project_1/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfile()
    );
  }
}