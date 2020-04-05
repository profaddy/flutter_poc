// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_starter/src/auth/Authentication.dart';
// import '../components/renderImage.dart';
// import 'home..dart';

// class MappingPage extends StatefulWidget {
//   final AuthImplementation auth;

//   MappingPage({this.auth});

//   @override
//   State<StatefulWidget> createState() {
//     return MappingPageState();
//   }
// }

// enum AuthStatus { notSignedIn, signedIn }

// class MappingPageState extends State<MappingPage> {
//   //vars
//   AuthStatus authStatus = AuthStatus.notSignedIn;
// // entry point
//   @override
//   void initState() {
//     super.initState();

//     widget.auth.getCurrentUser().then((FirebaseUserId) {
//       setState(() {
//         authStatus = FirebaseUserId == null
//             ? AuthStatus.notSignedIn
//             : AuthStatus.signedIn;
//       });
//       if (FirebaseUserId != null) {
//         Navigator.pushNamed(context,ExtractArgumentsScreen.routeName,
//       arguments: ScreenArguments(
//         auth:widget.auth,
//         onSignedIn:_signedIn
//       ),);
//       } else {
//         Navigator.pushNamed(context, '/login');
//       }
//     });
//   }
//   //methods

//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }
