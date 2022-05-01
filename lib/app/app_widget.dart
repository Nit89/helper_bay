import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_bay/color_selection_page/color_selection_page_widget.dart';

class WApp extends StatefulWidget {
  const WApp({Key? key}) : super(key: key);

  @override
  _WAppState createState() => _WAppState();
}

class _WAppState extends State<WApp> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
        textTheme: TextTheme(
      bodyText1: _applyGoogleFont(ThemeData.light().textTheme.bodyText1!),
      bodyText2: _applyGoogleFont(ThemeData.light().textTheme.bodyText2!),
      headline1: _applyGoogleFont(ThemeData.light().textTheme.headline1!),
      headline2: _applyGoogleFont(ThemeData.light().textTheme.headline2!),
      headline3: _applyGoogleFont(ThemeData.light().textTheme.headline3!),
      headline4: _applyGoogleFont(ThemeData.light().textTheme.headline4!),
      headline5: _applyGoogleFont(ThemeData.light().textTheme.headline5!),
      headline6: _applyGoogleFont(ThemeData.light().textTheme.headline6!),
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: theme,
        highContrastTheme: theme,
        highContrastDarkTheme: theme,
        themeMode: ThemeMode.light,
        home: const WColorSelectionPage());
  }

  TextStyle _applyGoogleFont(final TextStyle textStyle) {
    return GoogleFonts.quicksand(textStyle: textStyle);
  }
}
