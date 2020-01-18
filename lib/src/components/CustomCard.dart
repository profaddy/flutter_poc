import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.index, @required this.onPress});

  final index;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Card(
                child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: Text(
                'Card $index',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              Expanded(
                  child: FlatButton(
                child: const Text('Press'),
                onPressed: this.onPress,
              )),
            ])
          ],
        ))));
  }
}
