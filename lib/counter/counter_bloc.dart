import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCount()) {
   // incrementing value method
   on<Increment>((event, emit) {
    final stateValue=state.count;
    final incrementedStateValue=stateValue+1;
    return emit(CounterState(count: incrementedStateValue));
   }) ;
   // decrementing value
   on<Decrement>((event, emit){
    final stateValue=state.count;
    final decrementStateValue=stateValue-1;
    return emit(CounterState(count: decrementStateValue));
   });
   on<FromZero>((event, emit){
    int reset=0;
    return emit(CounterState(count: reset));
   });
  }
}
