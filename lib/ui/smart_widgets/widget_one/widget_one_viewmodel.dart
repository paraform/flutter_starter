import 'package:flutter_starter/app/app.locator.dart';
import 'package:flutter_starter/services/information_service.dart';
import 'package:stacked/stacked.dart';

class WidgetOneViewModel extends ReactiveViewModel {
  final InformationService _informationService =
      exampleLocator<InformationService>();
  int get postCount => _informationService.postCount;

  void updatePostCount() {
    _informationService.updatePostCount();
  }

  Future longUpdateStuff() async {
    var result = await runBusyFuture(updateStuff());
  }

  Future updateStuff() {
    return Future.delayed(const Duration(seconds: 3));
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_informationService];
}
