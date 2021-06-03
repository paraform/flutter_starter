// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/theme_setup.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() async {
  setupExampleLocator(environment: Environment.dev);
  await ThemeManager.initialise();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.blue[700],
        accentColor: Colors.yellow[700],
      ),
      lightTheme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.blue[300],
        accentColor: Colors.yellow[300],
      ),
      statusBarColorBuilder: (theme) => theme.accentColor,
      themes: getThemes(),
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
      ),
    );
  }
}
