@echo off

chcp 1251

if %1==d  goto d
if %1==ds goto ds

set filename=my_file.txt

:d
    if %2==name      set opt=n
    if %2==dir       set opt=g
    if %2==time      set opt=d
    dir "*" /o-%opt% > my_file.txt
goto end

:ds
    if %2==name      set opt=/+36
    if %2==dir       set opt=/+21
    if %2==time      set opt=/+12
    dir | sort %opt% > my_file.txt
goto end

:end