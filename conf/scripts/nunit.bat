set pathNUnitExe="C:\Program Files (x86)\NUnit.org\nunit-console.exe"

set pathProjectToTest=%1
set projectToTestName=%2
cd %pathProjectToTest%
%pathNUnitExe% %projectToTestName%
