import 'package:fitness/core/const/text_constants.dart';
import 'package:fitness/data/exercise_data.dart';
import 'package:fitness/data/workout_data.dart';
import 'package:fitness/screens/common_widgets/fitness_button.dart';
// import 'package:fitness/screens/start_workout/page/start_workout_page.dart';
// import 'package:fitness/screens/workout_details_screen/bloc/workoutdetails_bloc.dart';
// import 'package:fitness/screens/workout_details_screen/widget/workout_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fitness/core/extensions/list_extension.dart';

class WorkoutDetailsPage extends StatelessWidget {
  final WorkoutData workout;
  WorkoutDetailsPage({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: FitnessButton(
          title: TextConstants.start,
          onTap: () {
            
          },
        ),
      ),
    );
  }
}
