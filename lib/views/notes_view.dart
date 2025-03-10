import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade900,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: Icon(
          FontAwesomeIcons.plus,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
