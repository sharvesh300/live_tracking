import 'package:bloc/bloc.dart';
import 'package:geo_live_tracking/data_layer/maps_api.dart';
import 'package:geo_live_tracking/models/auto_complete_model.dart';
import 'package:meta/meta.dart';

part 'g_maps_state.dart';

class GMapsCubit extends Cubit<GMapsState> {
  GMapsCubit() : super(GMapsInitial());

  void getAutoComplete(String input) async{
    final response = await MapsApi().getAutoComplete(input);
    if(response is AutoCompleteModel){
      emit(GMapSuggestion(response));
    }else{
      emit(GMapsError("Something went wrong"));
    }
  }

  void clear(){
    emit(GMapsInitial());
  }

  void submit(AutoCompleteModel model){
    emit(GMapsEnd(model));
  }

}
