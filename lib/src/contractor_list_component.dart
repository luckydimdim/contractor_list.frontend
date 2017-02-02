import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'dart:html';
import 'package:alert/alert_service.dart';
import 'package:js/js.dart';

@Component(selector: 'contractor-list')
@View(
    templateUrl: 'contractor_list_component.html',
    directives: const [RouterLink])
class ContractorListComponent implements OnInit {
  static const String route_name = "ContractorList";
  static const String route_path = "contractorList";
  static const Route route = const Route(
      path: ContractorListComponent.route_path,
      component: ContractorListComponent,
      name: ContractorListComponent.route_name);

  final Router _router;
  final AlertService _alertService;

  ContractorListComponent(this._router, this._alertService) {}

  // import 'dart:html';
  void breadcrumbInit(){
    var  breadcrumbContent = querySelector('#breadcrumbContent') as DivElement;

    if (breadcrumbContent == null)
      return;

    breadcrumbContent.innerHtml = '''
            <li class="breadcrumb-item"><a href="#/master/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Список подрядчиков</li>
    ''';
  }

  @override
  void ngOnInit() {
    breadcrumbInit();
  }
}
