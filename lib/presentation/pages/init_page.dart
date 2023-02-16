import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twoifcond/core/injector.dart';
import 'package:twoifcond/presentation/bloc/home_bloc.dart';
import 'package:twoifcond/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  late final HomeBloc _bloc;

  App({super.key}) {
    _bloc = services<HomeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two If Conditional Error',
      home: Scaffold(
        body: BlocProvider(
          create: (_) => _bloc,
          child: const HomePage(),
        ),
      ),
    );
  }
}
