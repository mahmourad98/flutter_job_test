import 'package:flutter/material.dart';
import 'package:flutter_job_test/views/home_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key,}) : super(key: key,);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      darkTheme: ThemeData(primarySwatch: Colors.grey,),
      builder: (buildContext, childWidget,) => SafeArea(child: childWidget!,),
      home: const HomeView(),
    );
  }
}