import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rok/blocs/home_bloc.dart';
import 'package:rok/pages/commanders/commanders.dart';
import 'package:rok/widget/navi_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc homeBloc;
  List pages = [
    Commanders(),
    Commanders(),
    Commanders(),
    Commanders(),
  ];
  @override
  Widget build(BuildContext context) {
    homeBloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: homeBloc.navigationBarIndex,
          builder: (context, value, child) => pages[value],
        ),
      ),
      bottomNavigationBar: NaviBar(),
    );
  }
}
