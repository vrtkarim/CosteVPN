part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
class Starting extends HomeState{}
class Stoping extends HomeState{}
class Auth extends HomeState{}
