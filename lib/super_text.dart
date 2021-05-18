import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/heroesinfo.dart';
import 'package:provider2/villanosinfo.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);
    final villanosinfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(heroesinfo.heroe, style: TextStyle(fontSize: 30, color: heroesinfo.colorBase),),
        Text(villanosinfo.villano)
      ],
    );
  }
}
