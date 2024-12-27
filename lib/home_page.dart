import 'package:counter_demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final counterCubit = CounterCubit(); - 1st way

  final counterCubit = CounterCubit();
  @override
  Widget build(BuildContext context) {
    //final _counter = counterCubit.state;  - 1st way
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
                bloc: counterCubit,
                builder: (context, counter) {
                  return Text(
                    counter.toString(),
                    // '$_counter',  - 1st way
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            counterCubit.increament();
            // counterCubit.increament();  - 1st way
            // setState(() {
            //   // to rebuild the build section so UI will be refreshed
            // });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 20,
        ),
        FloatingActionButton(
          onPressed: () {
            counterCubit.decreament();
            // counterCubit.increament();  - 1st way
            // setState(() {
            //   // to rebuild the build section so UI will be refreshed
            // });
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.minimize),
        ),
      ]),
    );
  }
}
