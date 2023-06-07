import 'package:fitness/core/const/path_constants.dart';
import 'package:fitness/core/const/text_constants.dart';
import 'package:fitness/data/workout_data.dart';
import 'package:fitness/screens/common_widgets/custom_tag.dart';
import 'package:fitness/screens/workout_details_screen/widget/panel/exercises_list.dart';
import 'package:flutter/material.dart';

class WorkoutDetailsPanel extends StatelessWidget {
  final WorkoutData workout;

  WorkoutDetailsPanel({required this.workout});

  @override
  Widget build(BuildContext context) {
    return _createPanelData();
  }

  Widget _createPanelData() {
    return Column(
      children: [
        const SizedBox(height: 15),
        _createRectangle(),
        const SizedBox(height: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createHeader(),
              const SizedBox(height: 20),
              _createWorkoutData(),
              SizedBox(height: 20),
              _createExerciesList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createRectangle() {
    return Image(image: AssetImage(PathConstants.rectangle));
  }

  Widget _createHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        '${workout.title}' + "  " + TextConstants.workout,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createWorkoutData() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CustomTag(
            icon: PathConstants.timeTracker,
            content: "${workout.minutes}:00",
          ),
          const SizedBox(width: 15),
          CustomTag(
            icon: PathConstants.exerciseTracker,
            content: "${workout.exercises} ${TextConstants.exercisesLowercase}",
          ),
        ],
      ),
    );
  }

  Widget _createExerciesList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ExercisesList(
            exercises: workout.exerciseDataList!.toList(), workout: workout),
      ),
    );
  }
}
