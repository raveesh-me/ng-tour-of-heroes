import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:tohx/src/hero.dart';
import 'package:tohx/src/mock_heroes.dart';
import 'src/hero_component.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives, coreDirectives, HeroComponent],
  templateUrl: "app_component.html",
    styleUrls: ["app_component.css"],
)
class AppComponent {
  final title = "Tour Of Heroes";
  Hero selected;
  List<Hero> heroes = mockHeroes;
  onSelect(Hero hero) => selected = hero;
}