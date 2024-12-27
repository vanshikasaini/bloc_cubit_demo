import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // to manage statemanagement need to extends Cubit
// we need to sent initial state (can be string/int etc) to abstract Cubit class

  CounterCubit() : super(0);
  void increament() {
    emit(state + 1);
  }

  void decreament() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
