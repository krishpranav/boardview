library boardview;

import 'dart:math';

import 'package:boardview/boardview_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:boardview/board_list.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

class BoardView extends StatefulWidget {
  final List<BoardList>? lists;
  final double width;
  Widget? middleWidget;
  double? bottomPadding;
  bool isSelecting;
  bool? scrollbar;
  ScrollbarStyle? scrollbarStyle;
  BoardViewController? boardViewController;
  int dragDelay;

  Function(bool)? itemInMiddleWidget;
  OnDropBottomWidget? onDropItemInMiddleWidget;
  BoardView({Key? key, this.itemInMiddleWidget,this.scrollbar,this.scrollbarStyle,this.boardViewController,this.dragDelay=300,this.onDropItemInMiddleWidget, this.isSelecting = false, this.lists, this.width = 280, this.middleWidget, this.bottomPadding}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BoardViewState();
  }
}
