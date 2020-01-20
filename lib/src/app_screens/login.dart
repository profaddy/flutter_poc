import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Login'),
            ),
            body: Container(
                decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.topRight,
                    //   end: Alignment.bottomLeft,
                    //   colors: [Colors.blue, Colors.indigo])
                    ),
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    child:
                        // margin: EdgeInsets.all(20.0),
                        ListView(children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String userInput) {
                          setState(() {
                            debugPrint("set state called");
                            username = userInput;
                          });
                        },
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String userInput) =>
                              handleChanged(userInput)),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text('$username'),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('Login!'),
                      ),
                    ])))));
  }

  handleChanged(String userInput) {
    setState(() {
      debugPrint("set state called");
      username = userInput;
    });
  }
}
