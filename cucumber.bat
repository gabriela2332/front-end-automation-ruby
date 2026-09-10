@echo off
setlocal enabledelayedexpansion
set CUCUMBER_OUTPUT_ENCODING=UTF-8
bundle exec cucumber %*
