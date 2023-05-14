import 'dart:developer';
import 'package:bloc_test/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    log("from scratch");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "Please press the floating action button to increment the value"),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child:const Text("Reset"),
              onPressed: () {
                context.read<CounterBloc>().add(FromZero());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Decrement());
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
