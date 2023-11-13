import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/w_text_watching_bear.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog(
      {super.key,
      super.animation = NavAni.Fade,
      super.barrierDismissible = false});

  @override
  State<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends State<NumberDialog> {
  final numberController = TextEditingController();
  final passwordController = TextEditingController();
  final numberFocus = FocusNode();
  final passwordFocus = FocusNode();
  final textBearController = TextWatchingBearController();

  bool check = false;
  bool handsUp = false;
  double look = 0.0;

  @override
  void initState() {
    numberController.addListener(() {
      setState(() {
        look = numberController.text.length.toDouble() * 1.5;
      });
    });

    numberFocus.addListener(() {
      setState(() {
        check = numberFocus.hasFocus;
      });
    });

    passwordFocus.addListener(() {
      setState(() {
        handsUp = passwordFocus.hasFocus;
      });
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
            backgroundColor:
                context.appColors.roundedLayoutBackground.withOpacity(0.5),
            child: Column(
              children: [
                '숫자를 입력해 주세요'.text.make(),
                height20,
                SizedBox(
                  width: 250,
                  height: 250,
                  child: TextWatchingBear(
                    check: check,
                    handsUp: handsUp,
                    look: look,
                    controller: textBearController,
                  ),
                ),
                TextField(
                  focusNode: numberFocus,
                  controller: numberController,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  focusNode: passwordFocus,
                  obscureText: true,
                  controller: numberController,
                  keyboardType: TextInputType.number,
                ),
                height10,
                RoundButton(
                  text: '완료',
                  onTap: () async{
                    final text = numberController.text;
                    try {
                      int number = int.parse(text);
                      textBearController.runSuccessAnimation();
                      await sleepAsync(1000.ms);
                      widget.hide(number);
                    } catch (e) {
                      textBearController.runFailAnimation();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
