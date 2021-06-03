import 'package:flutter_starter/services/epoch_service.dart';
import 'package:flutter_starter/services/information_service.dart';
import 'package:flutter_starter/ui/bottom_nav/bottom_nav_example.dart';
import 'package:flutter_starter/ui/bottom_nav/favorites/favorites_viewmodel.dart';
import 'package:flutter_starter/ui/bottom_nav/history/history_viewmodel.dart';
import 'package:flutter_starter/ui/dark_light/dark_light_view.dart';
import 'package:flutter_starter/ui/details/details_view.dart';
import 'package:flutter_starter/ui/form/example_form_view.dart';
import 'package:flutter_starter/ui/home/home_view.dart';
import 'package:flutter_starter/ui/multiple_themes/multiple_themes_view.dart';
import 'package:flutter_starter/ui/nonreactive/nonreactive_view.dart';
import 'package:flutter_starter/ui/stream_view/stream_counter_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: BottomNavExample),
    MaterialRoute(page: StreamCounterView),
    CupertinoRoute(page: DetailsView),
    // TODO: Change the name of the FormView to avoid type clashing
    MaterialRoute(page: ExampleFormView),
    MaterialRoute(page: DarkLightView),
    MaterialRoute(page: MultipleThemesView),
    CustomRoute(
      page: NonReactiveView,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: InformationService),
    LazySingleton(
        classType: NavigationService, environments: {Environment.dev}),
    LazySingleton(classType: EpochService),
    LazySingleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),

    // singletons
    Singleton(classType: HistoryViewModel),
    Singleton(classType: FavoritesViewModel),
  ],
  logger: StackedLogger(),
  locatorName: 'exampleLocator',
  locatorSetupName: 'setupExampleLocator',
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
