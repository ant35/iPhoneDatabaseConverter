@echo off
setlocal enabledelayedexpansion

for /r your_directory_path %%G in (*) do (

	if "%%~xG"==".png" (
		echo %%~nG is a png file
	) else (
		ren "%%~fG" "%%~nG.png"
		echo "%%~nG"
		echo "%%~xG"
	)
)

