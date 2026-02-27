



import 'package:gulab_jamun/server.dart';
import 'package:gulab_jamun/user_class.dart';

class UserService {
  bool validatePassword({required String password}) {
    if (password.length >= 8) return true;
    return false;
  }

  bool checkIfUserAlreadyHasAccount({required String userName}) {
    if (users.contains(userName)) {
      return true;
    }
    return false;
  }
  UserModel? authenticateUser({required String userName, required String password}){
    final dbUser = fetchUserDataFromDB(userName: userName);

    if(userName== dbUser['username']&& password==dbUser['password']){
      return UserModel.fromJson(dbUser);
    }
    return null;
  }

Map<String, dynamic> fetchUserDataFromDB({required String userName}){
    //complex logic if we use Firebase
return dbUser;
}



}