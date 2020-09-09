import 'package:flutter/material.dart';
import 'package:flutter_class9/services/auth.dart';
import 'package:provider/provider.dart';

import 'Screens/wrapper.dart';
import 'model/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
