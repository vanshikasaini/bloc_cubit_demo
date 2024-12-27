import 'package:counter_demo/bloc/counter_bloc.dart';
import 'package:counter_demo/cubit/counter_cubit.dart';
import 'package:counter_demo/one_page.dart';
import 'package:counter_demo/one_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MySecApp());
  // runApp(const MyApp());
}

class MySecApp extends StatelessWidget {
  const MySecApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
            const OnePageBloc(), // MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

// Using Cubit for state management
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OnePage(), // MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
