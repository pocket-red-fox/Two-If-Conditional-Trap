import 'package:flutter/material.dart';
import 'package:twoifcond/core/injector.dart';

import 'presentation/pages/init_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  late final Injector injector;

  //! In This case pages can`t be changed
  injector = ExceptionInjector();

  //! In This case pages switch as normal
  // injector = NormalInjector();

  await injector.initServices();

  runApp(App());
}
