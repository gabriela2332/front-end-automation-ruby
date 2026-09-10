# Script wrapper para executar Cucumber com encoding UTF-8 no Windows
$env:CUCUMBER_OUTPUT_ENCODING = 'UTF-8'
bundle exec cucumber @args
