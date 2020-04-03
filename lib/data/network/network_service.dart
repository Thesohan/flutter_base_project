import 'dart:convert';

import 'package:base_project/util/app_config.dart';
import 'package:base_project/data/network/request_handler.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Handles networking throughout the application.
class NetworkService {
  factory NetworkService.development() {
    return NetworkService._(shouldLog: true);
  }

  factory NetworkService.production() {
    return NetworkService._(shouldLog: false);
  }
  // Should network requests be logged
  final bool shouldLog;

  // Initialize dio
  final Dio _dio;

//  AuthenticationApi _loginApi;

  /// Only get is allowed to prevent any change from outside [NetworkService],
  /// and allow just read access to the variable.
//  AuthenticationApi get loginApi => _loginApi;


  Map<String,String>cookies = {};
  NetworkService._({
    this.shouldLog = false,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
            headers: {
              'Content-Type': 'application/json',
            },
            connectTimeout: 30000,
            receiveTimeout: 30000,
          ),
        ) {
    // Send request regardless the ssl certificate of the website.
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (cert, host, port) {
        return true;
      };
    };

    // Move json decoding to a different isolate
    (_dio.transformer as DefaultTransformer).jsonDecodeCallback =
        (text) => compute(_parseAndDecode, text);

    RequestHandler.init(_dio);
    final RequestHandler requestHandler = RequestHandler.instance;


    // Set up all the API's
//    _loginApi = AuthenticationApi(requestHandler);
   }

  /// Update the Token Interceptor with new token
  updateToken(String token) {
//    _tokenInterceptor.updateToken(token);
  }
}
_parseAndDecode(String response) {
  return jsonDecode(response);
}
