import 'package:equatable/equatable.dart';

import 'counter_barrel.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      emit(IncrementState(state.counterValue + 1));
    });
    on<DecrementEvent>((event, emit) =>
    emit(DecrementState(state.counterValue -1 )));
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
