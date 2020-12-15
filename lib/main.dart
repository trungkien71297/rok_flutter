import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rok/blocs/home_bloc.dart';
import 'package:rok/pages/home.dart';

void main() {
  runApp(ROKGuide());
}

class ROKGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = HomeBloc();

    return Provider<HomeBloc>(
      create: (context) => bloc,
      dispose: (context, value) => bloc.dispose(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
