import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/constants.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Note',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'Flutter Notes Subtitle or Description or Somthing else - Flutter Notes Subtitle or Description or Somthing else',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'asset: lib/assets/fonts/Poppins-Thin.ttf',
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
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
                  'March 10 2025',
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
    );
  }
}
