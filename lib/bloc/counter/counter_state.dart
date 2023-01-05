part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState({required this.counterValue});

  final int counterValue;
  
  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counterValue: 0);
}
