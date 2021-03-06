package com.github.oliverdding.clickhouse.test

import org.scalatest.funsuite.AnyFunSuite

import java.sql._
import java.util.UUID.randomUUID
import scala.util.Random

class Insertion20 extends AnyFunSuite {
  test("insert 10000 records to column_20") {
    var connection: Connection = null
    var stmt: Statement = null
    var pstmt: PreparedStatement = null

    try {
      connection =
        DriverManager.getConnection("jdbc:clickhouse://127.0.0.1:9000")
      stmt = connection.createStatement
      pstmt = connection.prepareStatement(
        "INSERT INTO test.column_20 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
      )
      for (i <- 1 to 10000) {
        pstmt.setString(1, randomUUID().toString)

        pstmt.setTimestamp(2, new Timestamp(System.currentTimeMillis))

        for (i <- 3 to 11) {
          pstmt.setString(i, Random.alphanumeric.take(5).mkString)
        }

        for (i <- 12 to 20) {
          pstmt.setLong(i, Random.nextLong())
        }

        pstmt.addBatch()
      }
      pstmt.executeBatch

    } finally {
      if (pstmt != null) {
        pstmt.close()
      }
      if (stmt != null) {
        stmt.close()
      }
      if (connection != null) {
        connection.close()
      }
    }
  }
}
