//
//  Program.swift
//  iTunesJson
//
//  Created by Greg Bolsinga on 10/30/24.
//

import ArgumentParser
import Foundation
import iTunes

@main
public struct Program: AsyncParsableCommand {
  public static let configuration = CommandConfiguration(
    commandName: "tunes",
    abstract: "A tool for working with iTunes data.",
    version: iTunesVersion,
    subcommands: [BackupCommand.self, PatchCommand.self, RepairCommand.self, BatchCommand.self],
    defaultSubcommand: BackupCommand.self
  )

  public init() {}  // This is public and empty to help the compiler.
}
