
import 'package:news_app_anandu/models/useremodels.dart';

class Database {
  static Map<String, dynamic> mymap = {
    "name": "ANANDU",
    "address": "THODUPUZHA",
    "institute": "luminar Technolab cochin"
  };

  Publicapiresponse userdatamodel = Publicapiresponse.fromJson(mymap);
}