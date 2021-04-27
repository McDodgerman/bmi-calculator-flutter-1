import 'dart:ui';

import 'package:flutter/material.dart';

const kBottomUnitHeight = 80.0;
const kWindowUnitColor = Color(0xFF456672);
const kActiveUnitColor = Color(0xFF935677);
const kBottomUnitColor = Color(0xFFBA4786);
const kSliderMin = 120.0;
const kSliderMax = 220.0;

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kHLTextStyle = TextStyle(
  color: Color(0xFF90A962),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(0.0, 4.5),
      blurRadius: 8.0,
      color: Color(0xFF244F61),
    ),
  ],
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white60,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(0.0, 6.0),
      blurRadius: 8.0,
      color: Color(0xFF244F61),
    ),
  ],
);
const kBottomUnitTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
