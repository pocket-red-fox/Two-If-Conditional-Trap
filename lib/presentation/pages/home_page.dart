import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twoifcond/core/injector.dart';
import 'package:twoifcond/presentation/bloc/home_bloc.dart';
import 'package:twoifcond/presentation/pages/first_page.dart';
import 'package:twoifcond/presentation/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = BlocProvider.of<HomeBloc>(context);

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (_, state) {
          switch (state.runtimeType) {
            case FirstHomeState:
              return const FirstPage();
            case SecondHomeState:
              return const SecondPage();
          }

          return const Center(
            child: Text('Wrong State'),
          );
        },
      ),
    );
  }
}
