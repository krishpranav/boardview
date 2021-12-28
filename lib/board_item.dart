import 'package:boardview/board_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef void OnDropItem(int? listIndex, int? itemIndex,int? oldListIndex,int? oldItemIndex, BoardItemState state);
typedef void OnTapItem(int? listIndex, int? itemIndex, BoardItemState state);
typedef void OnStartDragItem(
    int? listIndex, int? itemIndex, BoardItemState state);
typedef void OnDragItem(int oldListIndex, int oldItemIndex, int newListIndex,
    int newItemIndex, BoardItemState state);

class BoardItem extends StatefulWidget {
  final BoardListState? boardList;
  final Widget? item;
  final int? index;
  final OnDropItem? onDropItem;
  final OnTapItem? onTapItem;
  final OnStartDragItem? onStartDragItem;
  final OnDragItem? onDragItem;
  final bool draggable;

  const BoardItem(
      {Key? key,
        this.boardList,
        this.item,
        this.index,
        this.onDropItem,
        this.onTapItem,
        this.onStartDragItem,
        this.draggable = true,
        this.onDragItem})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BoardItemState();
  }
}
