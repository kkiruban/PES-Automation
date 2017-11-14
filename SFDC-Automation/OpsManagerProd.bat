set "param1=%1"
setlocal EnableDelayedExpansion
if "!param1!"=="" ( set UserRole='CSMAdmin' ) else (set UserRole='%param1%')
set _my_datetime=%date%_%time%
set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%
set _filename=Result\OpsManager-%_my_datetime%.html
cd /d %~dp0
REM cucumber features --tags @om-opp,@om-mc,@OpsMgr_accounts,@OpsMgr_Assets,@OpsMgr_contacts,@OpsMgr_leads --expand  --format html --out %_filename% UserRole='OperationManagerProd'
cucumber features --tags @om-opp,@om-mc --expand  --format html --out %_filename% UserRole='OperationManagerProd'