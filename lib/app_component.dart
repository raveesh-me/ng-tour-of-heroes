import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:tohx/src/hero.dart';
import 'package:tohx/src/hero_service.dart';
import 'src/hero_component.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives, coreDirectives, HeroComponent],
  templateUrl: "app_component.html",
  styleUrls: ["app_component.css"],
  providers: [ClassProvider(HeroService)],
)
class AppComponent extends OnInit {
  final title = "Tour Of Heroes";
  HeroService _heroService;

  AppComponent(this._heroService);

  Hero selected;
  List<Hero> heroes;
  _getHeroes() async{
    heroes = await _heroService.getAllHeroes;
  }

  onSelect(Hero hero) => selected = hero;

  @override
  void ngOnInit() => _getHeroes();
}
