package com.lisy09.app

import org.apache.logging.log4j.LogManager
import org.apache.logging.log4j.Logger

/**
* Simple class App.
*/
object App {
  val log = LogManager.getLogger(this)
  def main(args: Array[String]): Unit = {
    log.info("Hello Remote World!");
  }
}
