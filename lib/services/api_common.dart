import 'package:dio/dio.dart';

final options = BaseOptions(
  baseUrl: 'http://localhost:8080/api',
  connectTimeout: 5000,
  receiveTimeout: 3000,
);
final Dio dio = Dio(options);