import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetDetileBikeCall {
  static Future<ApiCallResponse> call({
    String? name = 'dddd',
    String? email = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getDetileBike',
      apiUrl: 'http://34.87.162.99:8081/shop',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sdf': name,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic nameBike1(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[0].bikeName''',
      );
  static dynamic nameBike2(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[1].bikeName''',
      );
  static dynamic nameBike3(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[2].bikeName''',
      );
  static dynamic desc1(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[0].desc''',
      );
  static dynamic desc2(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[1].desc''',
      );
  static dynamic desc3(dynamic response) => getJsonField(
        response,
        r'''$[0].bikes[2].desc''',
      );
}

class GetshopCall {
  static Future<ApiCallResponse> call({
    List<String>? nameList,
  }) {
    final name = _serializeList(nameList);

    return ApiManager.instance.makeApiCall(
      callName: 'getshop',
      apiUrl: 'http://34.87.162.99:8081/shop',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sdff': name,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic nameBike(dynamic response) => getJsonField(
        response,
        r'''$..bikes[1].bikeName''',
      );
  static dynamic shopname(dynamic response) => getJsonField(
        response,
        r'''$[0].shopName''',
      );
}

class PostUserCall {
  static Future<ApiCallResponse> call({
    List<String>? usernameList,
    List<String>? passwordList,
  }) {
    final username = _serializeList(usernameList);
    final password = _serializeList(passwordList);
    final body = '''
{
  "username": "${username}",
  "password": ${password}"",
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postUser',
      apiUrl: 'http://34.87.162.99:8081/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class GetbookingCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getbooking',
      apiUrl: 'http://34.87.162.99:8081/booking',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic username(dynamic response) => getJsonField(
        response,
        r'''$[0].user.username''',
      );
  static dynamic bikename(dynamic response) => getJsonField(
        response,
        r'''$[0].bookBike.bikeName''',
      );
  static dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$[0].bookBike.desc''',
      );
  static dynamic day(dynamic response) => getJsonField(
        response,
        r'''$[0].day''',
      );
  static dynamic mmonth(dynamic response) => getJsonField(
        response,
        r'''$[0].month''',
      );
  static dynamic year(dynamic response) => getJsonField(
        response,
        r'''$[0].year''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
