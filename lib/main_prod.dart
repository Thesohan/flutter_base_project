import 'dart:math';

import 'package:base_project/util/app_config.dart';
import 'package:base_project/util/app_logger.dart';
import 'package:base_project/start_app.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  AppConfig.init(AppFlavor.production);
  AppLogger.initLogger(false);

  FlutterError.onError=(error){
    FlutterError.dumpErrorToConsole(error);
    Logger logger = Logger('mail');
    logger.warning('###Error####');
    logger.warning(error.stack);
  };
  startApp();
}