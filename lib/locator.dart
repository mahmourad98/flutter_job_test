import 'package:flutter_job_test/repositories/redditRespository/reddit_data_repository.dart';
import 'package:flutter_job_test/services/dio_network_service/dio_network_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future setupDependencyLocator() async{
  locator.registerSingleton(DioNetworkService.init(),);
  locator.registerLazySingleton(() => RedditRepository(),);
}
