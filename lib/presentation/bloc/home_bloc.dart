import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

abstract class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(FirstHomeState()) {
    on<SwitchHomeEvent>(_onSwitchHomeEvent);
  }

  FutureOr<void> _onSwitchHomeEvent(
    SwitchHomeEvent event,
    Emitter<HomeState> emit,
  );
}

class ExceptionHomeBloc extends HomeBloc {
  @override
  FutureOr<void> _onSwitchHomeEvent(
    SwitchHomeEvent event,
    Emitter<HomeState> emit,
  ) {
    if (state.runtimeType == FirstHomeState) {
      emit(SecondHomeState());
    }
    if (state.runtimeType == SecondHomeState) {
      emit(FirstHomeState());
    }
  }
}

class NormalHomeBloc extends HomeBloc {
  @override
  FutureOr<void> _onSwitchHomeEvent(
    SwitchHomeEvent event,
    Emitter<HomeState> emit,
  ) {
    if (state.runtimeType == SecondHomeState) {
      emit(FirstHomeState());
    } else if (state.runtimeType == FirstHomeState) {
      emit(SecondHomeState());
    }
  }
}
