@rem the script has archived all the video files in the current directory
@rem and print archived files

@echo off

set cur_date=%date:/=_%
set cur_time=%time::=_%

set archive_filename=video_archive_%cur_time%__%cur_date%
zip %archive_filename% *.mp4 *.avi *.mpg *.mpeg >> %cur_date%.log

echo BELOW FILES WAS WRITTEN TO %archive_filename%.zip
echo:
dir /B | find ".mp4"
dir /B | find ".avi"
dir /B | find ".mpg"
dir /B | find ".mpeg"

echo:
echo VIDEO FILES IN MP4 FORMAT:
for %%f in (.\*) do @echo %%f | find ".mp4"