import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:incepto_rover/controls.dart';
import 'package:holding_gesture/holding_gesture.dart';

class Forward_button extends StatelessWidget {
  Forward_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        forward();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.cyan, width: 2),
          ),
          onPressed: () {
            forward();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            forward();
            HapticFeedback.lightImpact();
          },
          child: Text(
            'Forward',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Backward_button extends StatelessWidget {
  Backward_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        backward();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.cyan, width: 2),
          ),
          onPressed: () {
            backward();
            HapticFeedback.lightImpact();
          },
          // onLongPress: () {
          //   backward();
          //   HapticFeedback.lightImpact();
          // },
          child: Text(
            'Backward',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Right_button extends StatelessWidget {
  const Right_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        right();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.cyan, width: 2),
          ),
          onPressed: () {
            right();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            right();
            HapticFeedback.lightImpact();
          },
          child: Text(
            'Right',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Left_button extends StatelessWidget {
  const Left_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        left();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.cyan, width: 2),
          ),
          onPressed: () {
            left();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            HapticFeedback.lightImpact();
          },
          child: Text(
            'Left',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Twist_Left_button extends StatelessWidget {
  const Twist_Left_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        twist_left();
      },
      child: SizedBox(
        height: 80,
        width: 100,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.orangeAccent, width: 2),
          ),
          onPressed: () {
            twist_left();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            HapticFeedback.lightImpact();
          },
          child: Icon(
            Icons.rotate_left_rounded,
            size: 40,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class Twist_Right_button extends StatelessWidget {
  const Twist_Right_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        // print\("cancelled"\);
      },
      onHold: () {
        twist_right();
      },
      child: SizedBox(
        height: 80,
        width: 100,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.orangeAccent, width: 2),
          ),
          onPressed: () {
            twist_right();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            HapticFeedback.lightImpact();
          },
          child: Icon(
            Icons.rotate_right_rounded,
            size: 40,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class Stop_button extends StatelessWidget {
  const Stop_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 50),
      enableHapticFeedback: true,
      onCancel: () {
        stop_motors();
        //// print\("cancelled"\);
      },
      onHold: () {
        stop_motors();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(color: Colors.red, width: 2),
          ),
          onPressed: () {
            stop_motors();
            HapticFeedback.lightImpact();
          },
          onLongPress: () {
            HapticFeedback.lightImpact();
          },
          child: Text(
            'Stop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade300,
            ),
          ),
        ),
      ),
    );
  }
}
