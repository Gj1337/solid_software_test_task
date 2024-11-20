/// Intarface for repository, that will provide colors.
abstract interface class ColorRepository {
  ///Return color based on implementation
  ///return value is int valuse that represent RGB color
  Future<int> getColor();
}
