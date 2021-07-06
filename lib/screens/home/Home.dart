import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tellme/providers/themeProvider/themeProvider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentThemeData = Provider.of<CustomTheme>(context);
    currentThemeData.getThemeData();
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.teal[900]),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_4_rounded),
            onPressed: () {
              currentThemeData.toggleTheme();
            },
          ),
        ],
        title: Text(
          "Tell Me",
        ),
      ),
      body: Center(
        child: Text(
          "Tell Me ",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
