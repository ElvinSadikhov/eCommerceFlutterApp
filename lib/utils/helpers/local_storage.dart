import 'package:get_storage/get_storage.dart';


class LocalStorage {

  LocalStorage._();

  static GetStorage getStorage(String key) {
    return GetStorage(key);
  }

}   
