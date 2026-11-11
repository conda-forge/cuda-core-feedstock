set "CUDA_PATH=%PREFIX%\%SUBDIR%"

set DIR_NAME=%PKG_NAME:-=_%
cd %DIR_NAME%
rem The source archive stores _build_shared.py as a symlink to the cuda_bindings_13 copy,
rem which does not survive extraction on Windows. Replace it with the file itself.
del /F /Q _build_shared.py 2>nul
copy /Y ..\cuda_bindings_13\_build_shared.py _build_shared.py
if errorlevel 1 exit 1
%PYTHON% -m pip install . --no-deps -vv
