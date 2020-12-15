import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rok/blocs/home_bloc.dart';

class NaviItemIcon extends StatelessWidget {
  NaviItemIcon({this.assets, this.index});
  final String assets;
  final int index;

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = Provider.of<HomeBloc>(context);
    return ValueListenableBuilder(
      valueListenable: homeBloc.navigationBarIndex,
      builder: (context, value, child) {
        return Image.asset(assets,
            height: 30,
            width: 30,
            color: (value == index)
                ? Color.fromRGBO(208, 214, 206, 100)
                : Color.fromRGBO(244, 240, 233, 100));
      },
    );
  }
}
