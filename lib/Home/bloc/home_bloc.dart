import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kvpn/Home/Home.dart';
import 'package:kvpn/Utils/model.dart';
import 'package:meta/meta.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<Start>(start);
    on<Stop>(stop);
  }

  FutureOr<void> start(Start event, Emitter<HomeState> emit) async {
    if (event.engine.initialized) {
      event.engine.connect(event.model.config, event.model.name,
          username: event.model.username,
          password: event.model.password,
          certIsRequired: false);
    }
  }

  FutureOr<void> stop(Stop event, Emitter<HomeState> emit) {
    event.engine.disconnect();
    emit(Starting());
  }
}
