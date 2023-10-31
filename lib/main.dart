import 'package:flutter/material.dart';
import 'package:news_app_anandu/controller/controller.dart';
import 'package:news_app_anandu/screens/homescreen.dart';

import 'package:provider/provider.dart';

import 'components/theme.dart';
import 'components/themedata.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Screencontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => Themeprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: lightmode,
        darkTheme: darkmode,
      
      ),
    );
  }
}