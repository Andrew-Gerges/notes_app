import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndex = 0;
  // List<Color> colorsList = [
  //   Color(0xff5899e2),
  //   Color(0xff65afff),
  //   Color(0xff153448),
  //   Color(0xff3C5B6F),
  //   Color(0xff948979),
  //   Color(0xff001F3F),
  //   Color(0xff3A6D8C),
  //   Color(0xff6A9AB0),
  //   Color(0xff274060),
  //   Color(0xff335c81),
  //   Color(0xff1b2845),
  // ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColorsList[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColorsList[index],
                isSelected: currentIndex == index ? true : false,
              ),
            );
          }),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 34,
              backgroundColor: Colors.greenAccent,
              child: CircleAvatar(
                radius: 32,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 38,
              backgroundColor: color,
            ),
          );
  }
}
