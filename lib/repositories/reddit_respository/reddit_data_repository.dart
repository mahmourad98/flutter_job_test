import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_job_test/data_models/reddit_data/reddit_response_dto.dart';
import 'package:flutter_job_test/locator.dart';
import 'package:flutter_job_test/services/dio_network_service/dio_network_service.dart';

class RedditRepoEndPoints{
  static String get dataEndPoint => "https://www.reddit.com/r/flutterdev/top.json?count=20";
}

class RedditRepository{
  final _dio = locator.get<DioNetworkService>().dio;
  Future<Either<dynamic, RedditResponseDto>> getData() async{
    late final Response response;
    try {
      response = await _dio.get(
        RedditRepoEndPoints.dataEndPoint,
        options:  Options(),
      );
      if (response.statusCode == HttpStatus.ok) {
        return Right(RedditResponseDto.fromJson(response.data,),);
      } else {
        return Left(Exception('Status Is Not Successful',),);
      }
    } catch (e) {
      return Left(e.toString(),);
    }
  }

  Future getData2() async{
    late final Response response;
    response = await _dio.get(
      RedditRepoEndPoints.dataEndPoint,
      options:  Options(),
    );
    if (response.statusCode == HttpStatus.ok) {
      return RedditResponseDto.fromJson(response.data,);
    } else {
      return null;
    }
  }
}