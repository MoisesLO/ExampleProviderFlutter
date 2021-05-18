import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/heroesinfo.dart';
import 'package:provider2/home_page.dart';
import 'package:provider2/villanosinfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroesInfo()),
        ChangeNotifierProvider(create: (context) => VillanosInfo())
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home' : (context) => HomePage()
        },
      ),
    );
  }
}
