import 'package:money_record_app/config/app_request.dart';
import 'package:money_record_app/config/session.dart';
import 'package:money_record_app/data/model/user.dart';

import '../../config/api.dart';

class SourceUser {
  static Future<bool> login(String email, String password) async {
    String url = '${Api.user}/login.php';
    Map? responseBody =
        await AppRequest.post(url, {'email': email, 'password': password});
    if (responseBody == null) return false;
    if (responseBody['success']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
    }

    return responseBody['success'];
  }
}
