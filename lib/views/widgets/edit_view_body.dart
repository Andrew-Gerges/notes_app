import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_color.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                Navigator.of(context).pop();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              title: 'Edit Note',
              icon: Icons.done,
            ),
            CustomTextField(
                onChanged: (p0) {
                  title = p0;
                },
                hint: 'Title'),
            CustomTextField(
              onChanged: (p0) {
                content = p0;
              },
              hint: 'Content ...',
              maxLines: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: EditNoteColor(
                note: widget.note,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
