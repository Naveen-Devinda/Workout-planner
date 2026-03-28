import 'package:workout_plan/models/equipment_model.dart';
import 'package:workout_plan/models/exercise_model.dart';
import 'package:workout_plan/models/user_model.dart';

User user = User(
  userID: "0",
  fullName: "John",
  gender: "Male",
  address: "kk/word roed",
  age: 23,
  description: "description",
  exerciseList: [
    Exercise(
      id: 1,
      execiseName: "Squats",
      execiseImageUrl: "assets/workout/fitness_2964514.png",
      noofMinuites: 5,
      completed: false,
    ),
  ],
  equipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Doumble",
      equipmentDescription: "A pair of dumbel",
      equipmentImageUrl: "assets/fitness/gym_10891476.png",
      noofMinutes: 10,
      noofCalories: 10.3,
      handOvered: false,
    ),
  ],
  favExerciseList: [
    Exercise(
      id: 1,
      execiseName: "Squats",
      execiseImageUrl: "assets/workout/fitness_2964514.png",
      noofMinuites: 5,
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Doumble",
      equipmentDescription: "A pair of dumbel",
      equipmentImageUrl: "assets/fitness/gym_10891476.png",
      noofMinutes: 10,
      noofCalories: 10.3,
      handOvered: false,
    ),

    
  ],
);
