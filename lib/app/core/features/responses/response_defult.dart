import 'package:flutter_gofast/app/core/enuns/app_enums.dart';
import 'package:flutter_gofast/app/core/features/responses/response_builder.dart';

class ResponseBuilder {
  static DefaultResponse failed<T>({T object, String message}) {
    return DefaultResponse<T>(
        object: object, message: message, status: ResponseStatus.Failed);
  }

  static DefaultResponse success<T>({T object, String message}) {
    return DefaultResponse<T>(
        object: object, message: message, status: ResponseStatus.Success);
  }
}
