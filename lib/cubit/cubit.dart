import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab6_assignment/cubit/states.dart';

class ScoreCubit extends Cubit<ScoresStates> {
  ScoreCubit() : super(ScoresInitailStates());

  static ScoreCubit get(context) => BlocProvider.of(context);
  int a = 0;
  int b = 0;

  add1(int teamno) {
    if (teamno == 1) {
      a = a + 1;
    } else if (teamno == 2) {
      b = b + 1;
    }
    emit(Add1pointState());
  }

  add2(int teamno) {
    if (teamno == 1) {
      a = a + 2;
    } else if (teamno == 2) {
      b = b + 2;
    }

    emit(Add2pointState());
  }

  add3(int teamno) {
    if (teamno == 1) {
      a = a + 3;
    } else if (teamno == 2) {
      b = b + 3;
    }
    emit(Add3pointState());
  }

  reset() {
    a = 0;
    b = 0;
    emit(ResetpointsState());
  }
}
