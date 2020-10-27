import 'package:flutter_gofast/app/core/features/responses/response_builder.dart';

abstract class IAuthRepository {
  Future<DefaultResponse> doLoginGoogle();
  Future<DefaultResponse> doLoginEmailPassword({String email, String password});
  Future<DefaultResponse> registerEmailPassword(
      {String email, String password});
  Future<DefaultResponse> getUser();
  Future<DefaultResponse> logOut();
}
