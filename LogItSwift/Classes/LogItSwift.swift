//
//  Log.swift
//  FitZeek
//
//  Created by Jacob Metcalf on 12/30/19.
//  Copyright © 2019 JfMetcalf. All rights reserved.
//

import Foundation

open class Log {
  
  private init() {}
  
  private static var message: String = ""
  
  public static func error(_ errorString: String, anythingElse: Any? = nil) {
    if anythingElse != nil {
      message = "❌ ERROR: \(errorString) --- And: \(anythingElse!)"
    } else {
      message = "❌ ERROR: \(errorString)"
    }
    print(message)
  }
  
  public static func info(_ infoString: String) {
    message = "ℹ️ INFO: \(infoString)"
    print(message)
  }
  
  public static func warn(_ warnString: String) {
    message = "⚠️ WARN: \(warnString)"
    print(message)
  }
  
  public static func action(_ actionString: String) {
    message = "☑️ ACTION: \(actionString)"
    print(message)
  }
  
  public static func success(_ successString: String) {
    message = "✅ SUCCESS: \(successString)"
    print(message)
  }
  
  public static func infoSuccess(_ successString: String) {
    message = "✔ success: \(successString)"
    print(message)
  }
  
  public static func looping(_ loopingString: String) {
    message = "🔄 LOOPING: \(loopingString)"
    print(message)
  }
}


