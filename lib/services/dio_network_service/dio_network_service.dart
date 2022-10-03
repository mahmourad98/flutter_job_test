import 'package:dio/dio.dart';

class DioNetworkService{
  late final Dio dio;
  late final BaseOptions baseOptions;


  DioNetworkService.init(){
    baseOptions = BaseOptions(
      receiveDataWhenStatusError: false,
      setRequestContentTypeWhenNoPayload: false,
    );
    dio = Dio();
    dio.options = baseOptions;
  }
}