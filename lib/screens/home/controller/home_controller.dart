import 'package:appretive_infosoft/screens/home/model/api_model.dart';

import '../../../utils/api_helper.dart';

class HomeController
{
  Future<UserModel> getData()
  async {
    UserModel u1 = await ApiHelper.apiHelper.getApi();
    return u1;
  }
}