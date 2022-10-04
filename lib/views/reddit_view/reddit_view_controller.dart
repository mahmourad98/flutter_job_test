import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_job_test/dataModels/reddit_data/reddit_response_dto.dart';
import 'package:flutter_job_test/repositories/redditRespository/reddit_data_repository.dart';
import 'package:meta/meta.dart';
import '../../locator.dart';

class RedditPostsBloc extends Bloc<RedditPostsEvent, RedditPostsState> {
  final RedditRepository redditRepository = locator.get<RedditRepository>();
  RedditPostsBloc() : super(PostsInitialState(),) {
    on<RedditPostsEvent>(
      (event, emit,) async => {
        if (event is GetPostsEvent) {
          emit(PostsLoadingState()),
          await Future.delayed(const Duration(seconds: 1), () => {},),
          await redditRepository.getData().then(
            (value,) => value.fold(handleError, handleData,),
          ),
        }
      },
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
    emit(PostsLoadedState(results),);
    return;
  }

  void handleError(dynamic error,){
    emit(PostsLoadedFailureState(error.toString(),),);
    return;
  }
}

@immutable
abstract class RedditPostsEvent {}

class GetPostsEvent extends RedditPostsEvent{}

@immutable
abstract class RedditPostsState extends Equatable{}

class PostsInitialState extends RedditPostsState {
  final List<Child> posts = <Child>[];

  PostsInitialState();

  @override
  List<Object> get props => [posts,];
}

class PostsLoadingState extends RedditPostsState {
  @override
  List<Object> get props => [];
}

class PostsLoadedState extends RedditPostsState {
  final List<Child> posts;

  PostsLoadedState(this.posts,);

  @override
  List<Object> get props => [posts,];
}

class PostsLoadedFailureState extends RedditPostsState {
  final String errorMessage;

  PostsLoadedFailureState(this.errorMessage,);

  @override
  List<Object> get props => [errorMessage,];
}