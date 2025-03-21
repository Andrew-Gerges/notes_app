import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            note: note,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Text(
                      note.content,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'asset: lib/assets/fonts/Poppins-Thin.ttf',
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(
                        FontAwesomeIcons.trash,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: Text(
                    note.date,
                    style: TextStyle(
                      // fontWeight: FontWeight.w300,
                      color: Colors.white.withValues(alpha: 0.5),
                      fontFamily: 'asset: lib/assets/fonts/Poppins-Thin.ttf',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
