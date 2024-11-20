import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test_task/lib/domain/repository/color_repository.dart';

/// Provider for handling color changing
class MainScreenProvider with ChangeNotifier {
  final ColorRepository _randomColorRepository;

  var _color = Colors.white;

  ///Get current color
  Color get color => _color;

  // ignore: public_member_api_docs
  MainScreenProvider(this._randomColorRepository);

  ///Refresh current color
  Future<void> changeColor() async {
    try {
      final newColorValue = await _randomColorRepository.getColor();
      final newColor = Color(newColorValue);

      _color = newColor;

      if (kDebugMode) {
        print('New color $newColor');
      }

      notifyListeners();
    } catch (exception) {
      if (kDebugMode) {
        print('MainScreenProvider cought $exception');
      }
    }
  }
}
