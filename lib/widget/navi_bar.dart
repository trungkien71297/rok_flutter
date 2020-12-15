import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rok/blocs/home_bloc.dart';
import 'package:rok/widget/navi_item_icon.dart';

class NaviBar extends StatefulWidget {
  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  HomeBloc homeBloc;
  int navigationIndex = 0;
  double iconSize = 30;
  Color selectedColor = Colors.black45;
  Color unselectedColor = Colors.red;
  BottomNavigationBar bottomNavigationBar;
  List<BottomNavigationBarItem> list = [
    BottomNavigationBarItem(
        icon: NaviItemIcon(assets: "assets/navigator/commander.png", index: 0),
        label: ""),
    BottomNavigationBarItem(
        icon: NaviItemIcon(assets: "assets/navigator/calculator.png", index: 1),
        label: ""),
    BottomNavigationBarItem(
        icon: NaviItemIcon(assets: "assets/navigator/archive.png", index: 2),
        label: ""),
    BottomNavigationBarItem(
        icon: NaviItemIcon(assets: "assets/navigator/settings.png", index: 3),
        label: "")
  ];

  void changePage(int value) {
    homeBloc.onChangeNaviBarIndex(value);
  }

  @override
  void initState() {
    bottomNavigationBar = BottomNavigationBar(
        items: list,
        currentIndex: navigationIndex,
        onTap: (value) => changePage(value));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    homeBloc = Provider.of<HomeBloc>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(color: Colors.black45, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: bottomNavigationBar,
        ));
  }
}
