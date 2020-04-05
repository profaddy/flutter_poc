import 'package:flutter/material.dart';
import 'package:flutter_starter/src/components/TextFieldComponent.dart';
import '../components/renderImage.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

enum FormType { login, register }

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String username = "";
  String password = "";
  //methods

  handleValidator(String value) {
    return value.isEmpty ? "Required! " : null;
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      Navigator.pushNamed(context, '/home');
      return true;
    } else {
      return false;
    }
  }

  void moveToregister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Login', style: TextStyle(color: Colors.white)),
            ),
            body: Center(
                child: Container(
                    child: Container(
                        margin: EdgeInsets.all(20.0),
                        width: 300,
                        child: new Form(
                            key: formKey,
                            child: (ListView(children: <Widget>[
                              logo(),
                              SizedBox(height: 20),
                              createInputs(),
                              SizedBox(height: 10),
                              createButtons(),
                            ])))
                        // margin: EdgeInsets.all(20.0),
                        )))));
  }

  Widget logo() {
    return RenderCircularAvatar(
        imageTag: "unlock", imagePath: "images/unlock_teal.png");
  }

  Widget createInputs() {
    return new Container(
        child: new Column(children: <Widget>[
      TextFieldComponent(
          handleChanged: handleChanged,
          label: "Username",
          isPasswordField: false,
          handleValidator: handleValidator),
      // Padding(padding: EdgeInsets.only(top: 10.0)),
      SizedBox(height: 10),
      TextFieldComponent(
          handleChanged: handleChanged,
          label: "Password",
          isPasswordField: true,
          handleValidator: handleValidator),
      SizedBox(height: 10),
      // Padding(padding: EdgeInsets.only(top: 10.0)),
      // Text('$username'),
    ]));
  }

  Widget createButtons() {
    return new Container(
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          RaisedButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.transparent)),
            onPressed: validateAndSave,
            child: Text('Login', style: new TextStyle(fontSize: 20.0)),
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Not have an account ? Create Account',
                style: new TextStyle(color: Colors.black, fontSize: 14.0)),
            textColor: Theme.of(context).accentColor,
          )
        ]));
  }

  handleChanged(String userInput) {
    setState(() {
      username = userInput;
    });
  }
}
