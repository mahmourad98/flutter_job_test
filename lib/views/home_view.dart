import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key,}) : super(key: key,);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(color: Colors.red,),
          ],
        ),
      ),
    );
  }
}