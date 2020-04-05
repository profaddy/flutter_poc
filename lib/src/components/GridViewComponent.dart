

import 'package:flutter/cupertino.dart';

class GridViewCompoment extends StatelessWidget{
  GridViewCompoment(this.list);
  final List<Container> list;

  Widget build(BuildContext context) {
return GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: this.list );
  }
}