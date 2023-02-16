import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twoifcond/presentation/bloc/home_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = BlocProvider.of<HomeBloc>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('2'),
        ),
        const Divider(),
        ElevatedButton(
          onPressed: () => bloc.add(
            SwitchHomeEvent(),
          ),
          child: const Text(
            'Switch',
          ),
        ),
      ],
    );
  }
}
