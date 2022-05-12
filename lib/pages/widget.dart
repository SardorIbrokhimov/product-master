import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  final int son;

  const IconPage({required this.son});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  int? _index;
  bool fill = false;
  Icon _fill = Icon(
    Icons.star,
    color: Colors.yellow,
    size: 35,
  );
  Icon _empty = Icon(
    Icons.star_border,
    color: Colors.yellow,
    size: 35,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      fill = !fill;

                      if (fill == true) {
                        _index = widget.son;
                      }
                    });
                    print(_index);
                  },
                  splashColor: Colors.black,
                  icon: fill ? _fill : _empty),
            ],
          )
        ],
      ),
    );
  }
}
