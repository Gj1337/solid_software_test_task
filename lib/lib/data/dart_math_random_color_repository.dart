import 'dart:math';

import 'package:solid_software_test_task/lib/domain/repository/color_repository.dart';

const _minColorValue = 0;
const _maxColorValue = 255 * 255 * 255 * 255;

/// ColorRepository implementation based
class DartMathRandomColorRepository implements ColorRepository {
  final _random = Random.secure();

  /// Return random color by dart:math [Random]
  @override
  Future<int> getColor() async =>
      _random.nextInt(_maxColorValue) + _minColorValue;
}
