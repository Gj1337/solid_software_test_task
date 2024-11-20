import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software_test_task/lib/presentation/main_screen/provider/main_screen_provider.dart';

const _textSize = 44.0;
const _animationDuration = Duration(seconds: 1);

/// Widget for greetings impression
class HiThereWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const HiThereWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
      builder: (_, provider, __) {
        final backgroundColor = provider.color;
        final textColor = provider.color.computeLuminance() > 0.5
            ? Colors.black
            : Colors.white;

        return AnimatedSwitcher(
          duration: _animationDuration,
          child: KeyedSubtree(
            key: ValueKey(backgroundColor),
            child: DecoratedBox(
              decoration: BoxDecoration(color: backgroundColor),
              child: InkWell(
                onTap: provider.changeColor,
                child: Center(
                  child: Text(
                    'Hi there',
                    style: TextStyle(color: textColor, fontSize: _textSize),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
