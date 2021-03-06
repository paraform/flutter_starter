import 'package:flutter_starter/app/app.locator.dart';
import 'package:flutter_starter/app/app.logger.dart';
import 'package:flutter_starter/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');
  final NavigationService _navigationService =
      exampleLocator<NavigationService>();

  HomeViewModel() {
    log.d('created');
  }

  String title = 'default';

  void navigate() {
    _navigationService.navigateTo(Routes.nonReactiveView);
  }

  void navigateToDarkLightTheme() {
    _navigationService.navigateTo(Routes.darkLightView);
  }

  void navigateToMultiTheme() {
    _navigationService.navigateTo(Routes.multipleThemesView);
  }

  void initialise() {
    log.i('initialise');
    title = 'initialised';
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    notifyListeners();
  }

  void updateData() {
    notifyListeners();
  }

  void updateTile(String value) {
    title = value;
    notifyListeners();
  }
}
