import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_job_test/repositories/reddit_respository/reddit_data_repository.dart';

import '../../locator.dart';

class RedditView extends StatefulWidget {
  const RedditView({Key? key,}) : super(key: key,);

  @override
  State<RedditView> createState() => _RedditViewState();
}

class _RedditViewState extends State<RedditView> {
  @override
  void initState() {
    super.initState();
  }
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