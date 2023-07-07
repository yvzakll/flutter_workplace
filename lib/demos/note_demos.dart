import 'package:bacik/101/image_learn.dart';
import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key key}) : super(key: key);
  final title = "Create Your First Note";
  final _description = "Add A Note";
  final createNote = "Create Note";
  final cancel = 'Cancel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(
              name: ImageItems().appleBookWithoutPath,
            ),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.horizontalPadding,
              child: _SubTitleWidget(
                title: _description * 10,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            _ElevatedButton(createNote: createNote),
            _TextButton(cancel: cancel),
          ],
        ),
      ),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({
    Key key,
    @required this.cancel,
  }) : super(key: key);

  final String cancel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(cancel),
    );
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton({
    Key key,
    @required this.createNote,
  }) : super(key: key);

  final String createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeight.buttonHeight,
        child: Center(
          child: Text(createNote),
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key key, this.textAlign = TextAlign.center, this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20.0);
  static const EdgeInsets verticalPadding =
      EdgeInsets.symmetric(vertical: 10.0);
}

class ButtonHeight {
  static const buttonHeight = 50.0;
}
