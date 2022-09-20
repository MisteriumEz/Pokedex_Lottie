import 'package:mobx/mobx.dart';
part 'increment_counter_controller.g.dart';

// ignore: library_private_types_in_public_api
class IncrementCounterS = _IncrementCounter with _$IncrementCounterS;

abstract class _IncrementCounter with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }
}
