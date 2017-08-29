//
//  DBManager.swift
//  SqliteFMDB
//
//  Created by Sriteja Thuraka on 5/10/17.
//  Copyright © 2017 Sriteja Thuraka. All rights reserved.
//

import UIKit

class DBManager: NSObject {
    
    static let shared: DBManager = DBManager()
    let databaseFileName = "database.sqlite"
    var pathToDatabase: String!
    var database: FMDatabase!
    let field_id = "ID"
    let field_name = "name"
    let filed_address = "address"
    let field_phone = "phone"
    
    
    override init() {
        super.init()
        
        let documentsDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        pathToDatabase = documentsDirectory.appending("\(databaseFileName)")
        
    }
    
    
    func createDatebase()-> Bool {
        
        var created = false
        
        if !FileManager.default.fileExists(atPath: pathToDatabase) {
            
            database = FMDatabase(path: pathToDatabase)
            
            if database != nil {
                
                if database.open() {
                    
                    let tableQuery = "create table contacts (ID integer primary key autoincrement, name text, address text, phone text)"
                    do {
                        try database.executeUpdate(tableQuery, values: nil)
                        created = true
                        
                    } catch {
                        print("Could not create table.")
                        print(error.localizedDescription)
                        
                    }
                    database.close()
                    
                }else{
                    
                    print("could not connected")
                }
                
            }
            
            
            
        }
        return created
        
    }
    
    func openDatabase() -> Bool {
        
        if database == nil {
            
            
            if FileManager.default.fileExists(atPath: pathToDatabase) {
                database = FMDatabase(path: pathToDatabase)
                
                
            }
        }
        if database != nil {
            
            if database.open() {
                
                return true
            }
            
        }
        return false
    }
    

    func insertMovieData() {
        // Open the database.
        if openDatabase() {
            
        }
    }
    
}



