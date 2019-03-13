import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives],
  templateUrl: "app_component.html"
)
class AppComponent {
  final title = "Tour Of Heroes";
  Hero hero = Hero(1, "Windstorm");
}