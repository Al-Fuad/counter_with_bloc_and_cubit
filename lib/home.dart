import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter_bloc.dart';
import 'package:learn_bloc/cubit/counter_cubit.dart';
import 'package:learn_bloc/inc_dec_bloc.dart';
import 'package:learn_bloc/inc_dec_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      "Counter Cubit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    BlocBuilder<CounterCubit, int>(builder: (context, counter) {
                      return Text(
                        '$counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                      );
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    const IncDecCubit()
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Counter Bloc",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    BlocBuilder<CounterBloc, int>(builder: (context, counter) {
                      return Text(
                        '$counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                      );
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    const IncDecBloc()
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
