import 'package:base_project/data/di/injector.dart';
import 'package:base_project/routes/routes.dart';
import 'package:base_project/ui/widgets/theme_inherited_widget.dart';
import 'package:base_project/util/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sailor/sailor.dart';

void startApp() async {
  Routes.initRoutes();
  Injector.setup();
  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeSwitcherWidget(
        initialDarkModeOn: false,
        child: MyHomePage(),
      ),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorObservers: [SailorLoggingObserver()],
      navigatorKey: Routes.sailor.navigatorKey,
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
