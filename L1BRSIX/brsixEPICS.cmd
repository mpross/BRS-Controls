# This file requires a blank line at the end.

dbLoadDatabase("./tCat.dbd",0,0)
tCat_registerRecordDeviceDriver(pdbbase)
callbackSetQueueSize(10000)

tcSetScanRate(10, 5)
tcGenerateList ("C:\SlowControls\TwinCAT3\BRS\L1BRSIX\brsix.req", "-rv -lb")
tcGenerateList ("C:\SlowControls\TwinCAT3\BRS\L1BRSIX\brsix.ini", "-rv -l -ns")
tcLoadRecords ("C:\SlowControls\TwinCAT3\BRS\L1BRSIX\BRS2\BRS2_Logic\BRS2_Logic.tpy", "-rv")

epicsEnvSet("EPICS_CA_ADDR_LIST",10.110.130.255)
epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST",NO)

iocInit()
