import '../../../core/enuns/app_enums.dart';
import 'response_builder.dart';

class ResponseBuilder {
  static DefaultResponse failed<T>({T object, String message}) {
    return DefaultResponse<T>(
        object: object, message: message, status: ResponseStatus.rsFailed);
  }

  static DefaultResponse success<T>({T object, String message}) {
    return DefaultResponse<T>(
        object: object, message: message, status: ResponseStatus.rsSuccess);
  }
}
