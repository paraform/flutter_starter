// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/bottom_nav/bottom_nav_example.dart';
import '../ui/dark_light/dark_light_view.dart';
import '../ui/details/details_view.dart';
import '../ui/form/example_form_view.dart';
import '../ui/home/home_view.dart';
import '../ui/multiple_themes/multiple_themes_view.dart';
import '../ui/nonreactive/nonreactive_view.dart';
import '../ui/stream_view/stream_counter_view.dart';

class Routes {
  static const String homeView = '/';
  static const String bottomNavExample = '/bottom-nav-example';
  static const String streamCounterView = '/stream-counter-view';
  static const String detailsView = '/details-view';
  static const String exampleFormView = '/example-form-view';
  static const String darkLightView = '/dark-light-view';
  static const String multipleThemesView = '/multiple-themes-view';
  static const String nonReactiveView = '/non-reactive-view';
  static const all = <String>{
    homeView,
    bottomNavExample,
    streamCounterView,
    detailsView,
    exampleFormView,
    darkLightView,
    multipleThemesView,
    nonReactiveView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.bottomNavExample, page: BottomNavExample),
    RouteDef(Routes.streamCounterView, page: StreamCounterView),
    RouteDef(Routes.detailsView, page: DetailsView),
    RouteDef(Routes.exampleFormView, page: ExampleFormView),
    RouteDef(Routes.darkLightView, page: DarkLightView),
    RouteDef(Routes.multipleThemesView, page: MultipleThemesView),
    RouteDef(Routes.nonReactiveView, page: NonReactiveView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    BottomNavExample: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BottomNavExample(),
        settings: data,
      );
    },
    StreamCounterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StreamCounterView(),
        settings: data,
      );
    },
    DetailsView: (data) {
      var args = data.getArgs<DetailsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DetailsView(
          key: args.key,
          name: args.name,
        ),
        settings: data,
      );
    },
    ExampleFormView: (data) {
      var args = data.getArgs<ExampleFormViewArguments>(
        orElse: () => ExampleFormViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExampleFormView(key: args.key),
        settings: data,
      );
    },
    DarkLightView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DarkLightView(),
        settings: data,
      );
    },
    MultipleThemesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MultipleThemesView(),
        settings: data,
      );
    },
    NonReactiveView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NonReactiveView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailsView arguments holder class
class DetailsViewArguments {
  final Key? key;
  final String name;
  DetailsViewArguments({this.key, required this.name});
}

/// ExampleFormView arguments holder class
class ExampleFormViewArguments {
  final Key? key;
  ExampleFormViewArguments({this.key});
}
