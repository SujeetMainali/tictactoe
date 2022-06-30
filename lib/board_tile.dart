import 'package:flutter/material.dart';
import 'package:tictactoe/tile_state.dart';

class BoardTile extends StatelessWidget {
  final double dimension;
  final TileState tileState;
  final VoidCallback onPressed;

  const BoardTile(
      {Key? key,
      required this.dimension,
      required this.tileState,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      child: TextButton(onPressed: onPressed, child: _widgetForTileState()
      ),
    );
  }

  Widget _widgetForTileState() {
    Widget widget = Image.asset('');

    switch (tileState) {
      case TileState.EMPTY:
        {
          widget = Container();
        }
        break;
      case TileState.CROSS:
        {
          widget = Image.asset('images/x.png');
        }
        break;
      case TileState.CIRCLE:
        {
          widget = Image.asset('images/o.png');
        }
        break;
    }
    return widget;
  }
}
