import 'package:flutter/material.dart';

class HomeBloc {
  final ValueNotifier<int> navigationBarIndex = ValueNotifier(0);
  onChangeNaviBarIndex(int index) {
    this.navigationBarIndex.value = index;
  }

  void dispose() {}
}
