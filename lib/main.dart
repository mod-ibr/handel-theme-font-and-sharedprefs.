import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tellme/providers/themeProvider/themeProvider.dart';
import 'package:tellme/screens/home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CustomTheme>(
          create: (_) => CustomTheme(),
        ),
      ],
      child: MymaterialApp(),
    );
  }
}

class MymaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentThemeData = Provider.of<CustomTheme>(context);
    currentThemeData.getThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: currentThemeData.lightTheme,
      darkTheme: currentThemeData.darkTheme,
      themeMode: currentThemeData.currentTheme,
      home: Home(),
    );
  }
}
