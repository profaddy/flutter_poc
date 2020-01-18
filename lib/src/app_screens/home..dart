import 'package:flutter/material.dart';
import '../components/CustomCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Home'),
            ),
            body: getItems()));
  }

//data source
  List getListItems() {
    var items = List.generate(1000, (counter) => "Item $counter");
    return items;
  }

  Widget getItems() {
    var listItems = getListItems();
    var listView = ListView.builder(itemBuilder: (context, index) {
      return CustomCard(
        index: listItems[index],
        onPress: () {
          Navigator.pushNamed(context, '/second');
        },
      );
    });
    return listView;
  }
}
