import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_job_test/dataModels/reddit_data/reddit_response_dto.dart';
import 'package:flutter_job_test/repositories/redditRespository/reddit_data_repository.dart';
import 'package:flutter_job_test/views/reddit_view/reddit_view_controller.dart';
import 'package:flutter_job_test/views/reddit_view/subViews/post_view_component.dart';
import '../../locator.dart';

class RedditView extends HookWidget {
  const RedditView({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => {
          context.read<RedditPostsBloc>().add(GetPostsEvent(),),
          log("onRefresh was called,", name: "Refresh Indicator",),
        },
        displacement: 128.0,
        child: BlocBuilder<RedditPostsBloc, RedditPostsState>(
          builder: (buildContext, state,){
            if (state is PostsLoadingState){
              return const Center(child: CircularProgressIndicator(),);
            }
            else if(state is PostsLoadedFailureState){
              return Center(child: Text(state.errorMessage,),);
            }
            else if(state is PostsInitialState){
              return ListView(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context,).size.height * 0.50),
                      child: const Text('No Posts Yet Pull Down To Load.',),
                    ),
                  ),
                ],
              );
            }
            else{
              final myState = state as PostsLoadedState;
              final List<Child> myPosts = myState.posts;
              return Center(
                child: CustomScrollView(
                  shrinkWrap: false,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (buildContext, itemIndex) => PostViewComponent(
                          thumbnailImageUrl: myPosts[itemIndex].data!.thumbnail!,
                          title: myPosts[itemIndex].data!.title!,
                          description: myPosts[itemIndex].data!.subreddit!,
                        ),
                        childCount: myPosts.length,
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}