/* InitializeTable.sql */
/* Fill up a new table with common readings from a (Davis) weather station. */
/* The row names are following the template guidelines set by MeteoBridge (see https://wiki.meteobridge.com/wiki/index.php/Templates) */

SET @tableName = `WeatherData`; /* Update tableName variable with the name of your own table */

CREATE TABLE IF NOT EXISTS @tableName (
  `Id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID / Primary key',
  `DateTime` datetime NOT NULL COMMENT 'Date and Time of Readings',
  `TempOutCur` decimal(4,1) NOT NULL COMMENT 'Current Outdoor Temperature',
  `HumOutCur` int(11) NOT NULL COMMENT 'Current Outdoor Humidity',
  `PressCur` decimal(4,2) NOT NULL COMMENT 'Current Barometric Pressure',
  `PressSeaCur` decimal(4,2) NOT NULL COMMENT 'Current Barometric Pressure at sealevel',
  `DewCur` decimal(4,1) NOT NULL COMMENT 'Current Dew Point',
  `HeatIdxCur` decimal(4,1) NOT NULL COMMENT 'Current Heat Index',
  `WindChillCur` decimal(4,1) NOT NULL COMMENT 'Current Wind Chill',
  `TempInCur` decimal(4,1) NOT NULL COMMENT 'Current Indoor Temperature',
  `HumInCur` int(11) NOT NULL COMMENT 'Current Indoor Humidity',
  `WindSpeedCur` decimal(4,1) NOT NULL COMMENT 'Current Wind Speed',
  `WindAvgSpeedCur` decimal(4,1) NOT NULL COMMENT 'Current Average Wind Speed',
  `WindDirCur` int(11) NOT NULL COMMENT 'Current Wind Direction (Degrees)',
  `WindDirCurEng` varchar(3) NOT NULL COMMENT 'Current Wind Direction (English)',
  `WindGust10` decimal(4,1) NOT NULL COMMENT 'Max Wind Gust for Past 10 Mins',
  `WindDirAvg10` int(11) NOT NULL COMMENT 'Average Wind Direction (Degrees) for Past 10 Mins',
  `WindDirAvg10Eng` varchar(3) NOT NULL COMMENT 'Average Wind Direction (English) for Past 10 Mins',
  `RainRateCur` decimal(5,2) NOT NULL COMMENT 'Current Rain Rate',
  `RainDay` decimal(4,2) NOT NULL COMMENT 'Total Rain for Today',
  `RainYest` decimal(4,2) NOT NULL COMMENT 'Total Rain for Yesterday',
  `RainMonth` decimal(5,2) NOT NULL COMMENT 'Total Rain this Month',
  `RainYear` decimal(5,2) NOT NULL COMMENT 'Total Rain this Year'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
