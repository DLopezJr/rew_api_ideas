@ECHO off
::==============================================================================
TITLE REW_run_4_measurements

ECHO;
ECHO Running "REW_run_4_measurements.bat"...

::==============================================================================
:: SET VARIABLES
SET PAUSE_TIME=15

::==============================================================================
:: MEASUREMENT_1

::====================
:: SET Measurement_1
curl -X POST "http://localhost:4735/measure/level" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"value\": -20, \"unit\": \"dBFS\"}"

:: GET Measurement_1
curl -X POST "http://localhost:4735/measure/command" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"command\": \"SPL\"}"

:: PAUSE SCRIPT UNTIL MEASUREMENT IS DONE
timeout %PAUSE_TIME%
::====================

::==============================================================================
:: MEASUREMENT_2

::====================
:: SET Measurement_2
curl -X POST "http://localhost:4735/measure/level" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"value\": -18, \"unit\": \"dBFS\"}"

:: GET Measurement_2
curl -X POST "http://localhost:4735/measure/command" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"command\": \"SPL\"}"

:: PAUSE SCRIPT UNTIL MEASUREMENT IS DONE
timeout %PAUSE_TIME%
::====================

::==============================================================================
:: MEASUREMENT_3

::====================
:: SET Measurement_3
curl -X POST "http://localhost:4735/measure/level" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"value\": -16, \"unit\": \"dBFS\"}"

:: GET Measurement_3
curl -X POST "http://localhost:4735/measure/command" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"command\": \"SPL\"}"

:: PAUSE SCRIPT UNTIL MEASUREMENT IS DONE
timeout %PAUSE_TIME%
::====================

::==============================================================================
:: MEASUREMENT_4

::====================
:: SET Measurement_4
curl -X POST "http://localhost:4735/measure/level" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"value\": -14, \"unit\": \"dBFS\"}"

:: GET Measurement_4
curl -X POST "http://localhost:4735/measure/command" -H "accept: application/json" -H "Content-Type: application/json" -d "{ \"command\": \"SPL\"}"

:: PAUSE SCRIPT UNTIL MEASUREMENT IS DONE
timeout %PAUSE_TIME%
::====================

::==============================================================================
:: Keep Terminal alive
ECHO script is completed

ECHO;
PAUSE
