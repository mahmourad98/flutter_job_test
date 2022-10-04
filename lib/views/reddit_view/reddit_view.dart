import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_job_test/dataModels/reddit_data/reddit_response_dto.dart';
import 'package:flutter_job_test/repositories/redditRespository/reddit_data_repository.dart';
import 'package:flutter_job_test/views/reddit_view/subViews/post_view_component.dart';
import '../../locator.dart';

class RedditView extends StatefulWidget {
  const RedditView({Key? key,}) : super(key: key,);

  @override
  State<RedditView> createState() => _RedditViewState();
}

class _RedditViewState extends State<RedditView> {
  final posts = <Child>[];

  @override
  void initState() {
    locator.get<RedditRepository>().getData().then(
      (value,) => value.fold((l,) => null, handleData,),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body: Center(
        // child: Column(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: const <Widget>[
        //     PostViewComponent(
        //       thumbnailImageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzM4BlE2x4m-cMkYV3sn4ytUSUDd3N3XklJMcyXHA&s",
        //       title: "Title",
        //       description: "Description",
        //     ),
        //   ],
        // ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (buildContext, itemIndex) => PostViewComponent(
                  thumbnailImageUrl: posts[itemIndex].data!.thumbnail!,
                  title: posts[itemIndex].data!.title!,
                  description: posts[itemIndex].data!.subreddit!,
                ),
                childCount: posts.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  void handleData(RedditResponseDto redditResponseDto,){
    final List<Child> results = redditResponseDto.data.data?.children?.toList() ?? <Child>[];
    for(Child item in results){
      if(!(item.data?.thumbnail?.contains("http",) ?? false)){
        if (item.data != null) {
          item.data!.thumbnail = "https://i.guim.co.uk/img/media/02c5fc2b42591243e6292fc83f8a97ed78807b57/198_0_2000_1200/master/2000.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=d31d7a8f045e54151b84076280aebca8";
        }
      }
    }
    setState(() {
      posts.clear();
      posts.addAll(results,);
    });
    //Child.fromJson(redditResponseDto.originalJson['data']['children'].toList().first['data']['secure_media']);
    //log("${redditResponseDto.originalJson['data']['children'].toList().first}", name: "data",);
    //log("${results.toList()[0].data!.selftext!}", name: "results list",);
    return;
  }
}