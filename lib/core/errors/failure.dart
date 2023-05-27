import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;

  const Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Recive Timeout with ApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer canceled');

      case DioErrorType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No InterNet Connection');
        }
        return ServerFailure('Unexcepted error, please try later');

      case DioErrorType.unknown:
        return ServerFailure('Opps There Was an error, please try later');
      default:
        return ServerFailure('Opps There Was an error, please try later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your requset not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('Opps There Was an error, please try later');
    }
  }
}
