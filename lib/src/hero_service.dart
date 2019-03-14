import 'package:tohx/src/hero.dart';
import 'package:tohx/src/mock_heroes.dart';

class HeroService {
  Future<List<Hero>> get getAllHeroes async =>
      Future.delayed(Duration(milliseconds: 2), () => mockHeroes);
}
