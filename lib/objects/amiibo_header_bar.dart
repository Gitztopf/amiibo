import 'package:flutter/material.dart';

class AmiiboHeaderBar extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(

        title:  Text("Amiibo",),);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(48);
}
