import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter_bloc.dart';

class IncDecBloc extends StatelessWidget {
  const IncDecBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Row(
      children: [
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterIncremented());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterDecremented());
          },
          tooltip: 'Decrement',
          child: const Icon(CupertinoIcons.minus),
        ),
      ],
    );
  }
}
