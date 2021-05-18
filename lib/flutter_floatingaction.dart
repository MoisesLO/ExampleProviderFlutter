import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/heroesinfo.dart';
import 'package:provider2/villanosinfo.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);
    final villanosinfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: Icon(Icons.access_time),
            backgroundColor: Colors.red,
            onPressed: (){
              heroesinfo.heroe = 'Iromen';
              villanosinfo.villano = 'El Mandarin';
            }
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
            child: Icon(Icons.account_balance),
            backgroundColor: Colors.blue,
            onPressed: (){
              heroesinfo.heroe = 'Capitan America';
              villanosinfo.villano = 'Red Skill';
            }
        ),
      ],
    );
  }
}
