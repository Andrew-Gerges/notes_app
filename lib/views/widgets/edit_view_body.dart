import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.done,
            ),
            CustomTextField(hint: 'Title'),
            CustomTextField(hint: 'Content ...',
            maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
