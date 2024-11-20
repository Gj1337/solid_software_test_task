import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software_test_task/lib/data/dart_math_random_color_repository.dart';
import 'package:solid_software_test_task/lib/presentation/main_screen/provider/main_screen_provider.dart';
import 'package:solid_software_test_task/lib/presentation/main_screen/widget/hi_there_widget.dart';

///Screen with main functionality
class MainScreen extends StatelessWidget {
  // ignore: public_member_api_docs
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainScreenProvider(DartMathRandomColorRepository()),
      child: const Scaffold(body: HiThereWidget()),
    );
  }
}
