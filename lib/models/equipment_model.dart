class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noofMinutes;
  final double noofCalories;
  final bool handOvered;

  Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noofMinutes,
    required this.noofCalories,
    required this.handOvered,
  });
}
