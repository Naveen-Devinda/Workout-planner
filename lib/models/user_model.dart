import 'package:workout_plan/models/equipment_model.dart';
import 'package:workout_plan/models/exercise_model.dart';

class User {
  final String userID;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExeciseCompleted = 0;
  int totalequipmentsHandovered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userID,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });
}
