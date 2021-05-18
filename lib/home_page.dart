import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/flutter_floatingaction.dart';
import 'package:provider2/heroesinfo.dart';
import 'package:provider2/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(heroesinfo.heroe),
      ),
      body: Center(
        child: SuperText(),
      ),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
