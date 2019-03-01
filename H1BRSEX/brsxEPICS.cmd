# This file requires a blank line at the end.

dbLoadDatabase("./tCat.dbd",0,0)
tCat_registerRecordDeviceDriver(pdbbase)
callbackSetQueueSize(10000)

tcSetScanRate(10, 5)
tcLoadRecords ("C:\Users\controls\Documents\BRSX\BRSXPLC\BRS2\BRS2_Logic\BRS2_Logic.tpy", "-rv")

iocInit()
