import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:twoifcond/presentation/bloc/home_bloc.dart';

final GetIt services = GetIt.instance;

abstract class Injector {
  FutureOr<void> initServices();
}

class ExceptionInjector implements Injector {
  @override
  FutureOr<void> initServices() async {
    services.registerLazySingleton<HomeBloc>(
      () => ExceptionHomeBloc(),
    );
  }
}

class NormalInjector implements Injector {
  @override
  FutureOr<void> initServices() async {
    services.registerLazySingleton<HomeBloc>(
      () => NormalHomeBloc(),
    );
  }
}
