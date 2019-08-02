DEL /F /S *.user *.suo *.ncb *.htm *.pdb *.idb *.obj *.manifest *.dep *.res
RD /S /Q bin map obj
for /l %%i in (1 1 2) do (
	for /f "delims=" %%i in ('dir /ad /b /s') do (
		dir /b "%%i"|findstr .>nul||rd "%%i"
	)
)

