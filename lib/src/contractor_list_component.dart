import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

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

  @override
  void ngOnInit() {}
}
