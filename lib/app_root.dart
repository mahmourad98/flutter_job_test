import 'package:flutter/material.dart';
import 'package:flutter_job_test/views/reddit_view/home_view.dart';

import 'locator.dart';

class AppRoot extends StatelessWidget {
  AppRoot({Key? key,}) : super(key: key,){
    setupDependencyLocator();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      darkTheme: ThemeData(primarySwatch: Colors.grey,),
      builder: (buildContext, childWidget,) => SafeArea(child: childWidget!,),
      home: const RedditView(),
    );
  }
}