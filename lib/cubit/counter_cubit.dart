import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(teamAPoints: 0, teamBPoints: 0));

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementTeamA(int value) {
    teamAPoints += value;
    emit(CounterState(teamAPoints: teamAPoints, teamBPoints: teamBPoints));
  }

  void incrementTeamB(int value) {
    teamBPoints += value;
    emit(CounterState(teamAPoints: teamAPoints, teamBPoints: teamBPoints));
  }
  void reset(){
    teamAPoints=0;
    teamBPoints=0;
    emit(CounterState(teamAPoints: teamAPoints, teamBPoints: teamBPoints));
  }
}
