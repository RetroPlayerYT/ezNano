@echo off
:menu start
echo welcome to qcompile v1.0
echo please note that qcompile currently only compiles java
echo we'll ask a few questions to generate your compiler
echo ---------------
echo what is the name of your java file? (if you wanna include all java files in this
echo directory, type "*.java")
SET /P F=
echo ---------------
echo give us the path to your manifest.mf
SET /P M=
echo ---------------
echo how should your .jar be called? (add .jar to the end)
SET /P J=
cls
color 02
echo step 1/3
echo javac %F%>>compiler.bat
ping localhost -n 2 >nul
echo step 2/3
echo jar -cvmf %M% %J% *.class>>compiler.bat
ping localhost -n 2 >nul
echo step 3/3
echo %J%>>compiler.bat
ping localhost -n 2 >nul
echo successfully created compiler!
echo press any key to exit the wizard
pause>nul