import 'dart:convert';

import 'package:geo_live_tracking/config.dart';
import 'package:geo_live_tracking/models/auto_complete_model.dart';
import 'package:http/http.dart' as http;

class MapsApi {
  final String api = AppConfig.api_key;

  Future<AutoModel> getAutoComplete(String input) async{
    final url = "${AppConfig.auto_complete_url}?input=$input&key=$api";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = json.decode(response.body);
      AutoCompleteModel autoCompleteModel = AutoCompleteModel.fromJson(body);
      print(body);
      return autoCompleteModel;
    }else{
      ErrorModel errorModel = ErrorModel(message: "Something went wrong");
      return errorModel;
    }
  }

  
}