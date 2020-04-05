import 'package:flutter/material.dart';
import '../components/CustomCard.dart';
import '../components/GridViewComponent.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Scaffold(
            body: GridViewCompoment(_buildGridTileList(100)))
            );
  }

// //data source
//   List getListItems() {
//     var items = List.generate(1000, (counter) => "Item $counter");
//     return items;
//   }

//   Widget getItems(BuildContext context) {
//     var listItems = getListItems();
//     var listView = ListView.builder(itemBuilder: (context, index) {
//       return CustomCard(
//         index: listItems[index],
//         onPress: () {
//           Navigator.pushNamed(context, '/second');
//         },
//       );
//     });
//     return listView;
//   }
  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.teal[700], Colors.teal[100]])),
          child: Text('$i Item')));
}
