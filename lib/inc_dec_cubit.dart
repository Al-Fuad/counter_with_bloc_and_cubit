import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/cubit/counter_cubit.dart';

class IncDecCubit extends StatelessWidget {
  const IncDecCubit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Row(
      children: [
        FloatingActionButton(
          onPressed: () {
            counterCubit.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            counterCubit.decrement();
          },
          tooltip: 'Decrement',
          child: const Icon(CupertinoIcons.minus),
        ),
      ],
    );
  }
}
