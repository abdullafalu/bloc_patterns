part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});
  
}

class InitialCount extends CounterState{
  InitialCount():super(count: 0);
}


