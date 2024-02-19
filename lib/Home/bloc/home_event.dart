part of 'home_bloc.dart';

sealed class HomeEvent {}

class Init extends HomeEvent {}

class Start extends HomeEvent {
  Model model;
  OpenVPN engine;

  Start({required this.engine, required this.model});
}

class Notime extends HomeEvent {}

class Stop extends HomeEvent {
  OpenVPN engine;
  Stop({required this.engine});
}
