import 'package:workout_plan/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> execiseList = [
    Exercise(
      id: 0,
      execiseName: "Push-Ups",
      execiseImageUrl: "assets/workout/exercise_5783140.png",
      noofMinuites: 10,
      completed: false,
    ),
    Exercise(
      id: 1,
      execiseName: "Squats",
      execiseImageUrl: "assets/workout/fitness_2964514.png",
      noofMinuites: 5,
      completed: false,
    ),
  ];
}
