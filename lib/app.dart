import 'package:flutter/material.dart';

// import 'screens/locations/locations.dart';
// import 'screens/location_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   onGenerateRoute: _routes(),
    //   theme: _theme(),
    // );
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World ss'),
        ),
      ),
    );
  }

  // RouteFactory _routes() {
  //   return (settings) {
  //     final Map<String, dynamic> arguments = settings.arguments;
  //     Widget screen;
  //     switch (settings.name) {
  //       case LocationsRoute:
  //         screen = Locations();
  //         break;
  //       case LocationDetailRoute:
  //         screen = LocationDetail(arguments['id']);
  //         break;
  //       default:
  //         return null;
  //     }
  //     return MaterialPageRoute(builder: (BuildContext context) => screen);
  //   };
  // }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
        textTheme: TextTheme(
          title: TitleTextStyle,
          subtitle: SubTitleTextStyle,
          caption: CaptionTextStyle,
          body1: Body1TextStyle,
        ));
  }
}
