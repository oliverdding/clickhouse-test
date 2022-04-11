ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.12.15"

lazy val root = (project in file("."))
  .settings(
    name := "clickhouse-test",
    idePackagePrefix := Some("com.github.oliverdding.clickhouse.test"),
    libraryDependencies ++= Seq(
      "com.github.housepower" % "clickhouse-native-jdbc-shaded" % "2.6.5",
      // test
      "org.scalatest" %% "scalatest" % "3.2.11" % Test
    )
  )
