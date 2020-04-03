//import 'package:flutter/cupertino.dart';
//import 'package:logging/logging.dart';
//import 'package:new_artist_project/data/models/api/request/forgot_password_request.dart';
//import 'package:new_artist_project/data/models/api/request/login_model.dart';
//import 'package:new_artist_project/data/models/api/request/logout_request.dart';
//import 'package:new_artist_project/data/models/api/request/register_artist_request.dart';
//import 'package:new_artist_project/data/models/api/response/all_artist_info_response.dart';
//import 'package:new_artist_project/data/models/api/response/artist_profile_response.dart';
//import 'package:new_artist_project/data/models/api/response/simple_message_response.dart';
//import 'package:new_artist_project/data/network/request_handler.dart';
//import 'package:new_artist_project/data/resource.dart';
//
///// data.data represents the response body
//class AuthenticationApi {
//  final RequestHandler _requestHandler;
//  AuthenticationApi(this._requestHandler);
//
//  Future<Resource<AllArtistInfoResponse>> userLogin({
//    @required LoginModel credential,
//  }) async {
//    assert(credential != null);
//    return _requestHandler.sendRequest(
//      method: Method.post,
//      path: '/auth_controller/',
//      body: credential.toJson(),
//      responseMapper: (data) {
//
//        return AllArtistInfoResponse.fromJson(data.data);
//      },
//    );
//  }
//
//  Future<Resource<SimpleMessageResponse>> forgotPassword({
//    @required ForgotPasswordRequest forgotPasswordRequest,
//  }) async {
//    assert(forgotPasswordRequest != null);
//    return _requestHandler.sendRequest(
//      method: Method.post,
//      path: '/Forgot_controller/index_post/',
//      body: forgotPasswordRequest.toJson(),
//      responseMapper: (data) {
//        return SimpleMessageResponse.fromJson(data.data);
//      },
//    );
//  }
//
//
//  Future<Resource<SimpleMessageResponse>> registerArtist({
//    @required RegisterArtistRequest registerArtistRequest,
//  }) async {
//    assert(registerArtistRequest != null);
//    return _requestHandler.sendRequest(
//      method: Method.post,
//      path: '/register_controller/index_post/',
//      body: registerArtistRequest.toJson(),
//      responseMapper: (data) {
//        return SimpleMessageResponse.fromJson(data.data);
//      },
//    );
//  }
//
//
//  Future<Resource<SimpleMessageResponse>> logoutArtist({
//    @required LogoutRequest logoutRequest,
//  }) async {
//    assert(logoutRequest != null);
//    return _requestHandler.sendRequest(
//      method: Method.post,
//      path: '/Logout_controller/',
//      body: logoutRequest.toJson(),
//      responseMapper: (data) {
//        return SimpleMessageResponse.fromJson(data.data);
//      },
//    );
//  }
//}
