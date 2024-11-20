import 'package:flutter/material.dart';
import 'package:solid_software_test_task/lib/presentation/main_screen/main_screen.dart';

/// App class that is start point for all application
class App extends StatelessWidget {
  // ignore: public_member_api_docs
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
