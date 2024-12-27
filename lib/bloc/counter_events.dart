part of 'counter_bloc.dart';

sealed class CounterEvent {
  // benefit over abstract class is if we use switch class then u cannot skip
  //any event bydefault sealed class will alert u
}

final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}
