part of 'g_maps_cubit.dart';

@immutable
sealed class GMapsState {}

final class GMapsInitial extends GMapsState {}

final class GMapSuggestion extends GMapsState{
  final AutoCompleteModel  autoCompleteModel;
  GMapSuggestion(this.autoCompleteModel);
}

final class GMapsEnd extends GMapsState{
  final AutoCompleteModel autoCompleteModel;
  GMapsEnd(this.autoCompleteModel);
}

final class GMapsError extends GMapsState{
  final String message;
  GMapsError(this.message);
}