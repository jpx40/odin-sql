package odin 


import sqlite "../odin-sqlite3/sqlite3"

import  sql3 "../odin-sqlite3/sqlite3_wrap"
import "core:fmt"






Item :: struct {
    name: cstring
    
}


main :: proc() {
    
    db, _ := sql3.open("test.db",true)
    sql3.sql_exec(db,"insert into  items3r  VALUES (\"Bob\");")
    fmt.println(1)
  res,s :=  sql3.sql_query(db,"select * from  items3r;",Item)
  fmt.println(2)
  for v in res {
      fmt.println(v.name)
  }

  if s != nil {
      fmt.println(sqlite.errstr(s))
  }
}