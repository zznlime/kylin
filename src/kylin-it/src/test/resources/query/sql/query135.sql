-- KE-14621 division between integers
SELECT {fn LTRIM( {fn CONVERT( {fn CONVERT( {fn TRUNCATE( ( 6 + {fn DAYOFYEAR(CAL_DT)} + ( {fn MOD( ( 7 + {fn DAYOFWEEK( {fn TIMESTAMPADD( SQL_TSI_DAY, {fn CONVERT( {fn TRUNCATE( (-1 * ({fn DAYOFYEAR(CAL_DT)} - 1)), 0)}, SQL_BIGINT)}, {fn CONVERT( CAL_DT, SQL_DATE)} )} )} - 2), 7)} ) ) / 7, 0)}, SQL_BIGINT)}, SQL_VARCHAR)})} AS "TEMP_Test__499182808__0_"
FROM TEST_KYLIN_FACT
GROUP BY {fn LTRIM({fn CONVERT({fn CONVERT({fn TRUNCATE((6 + {fn DAYOFYEAR(CAL_DT)} + ({fn MOD((7 + {fn DAYOFWEEK({fn TIMESTAMPADD(SQL_TSI_DAY,{fn CONVERT({fn TRUNCATE((-1 * ({fn DAYOFYEAR(CAL_DT)} - 1)),0)}, SQL_BIGINT)},{fn CONVERT(CAL_DT, SQL_DATE)})})} - 2), 7)})) / 7,0)}, SQL_BIGINT)}, SQL_VARCHAR)})}
