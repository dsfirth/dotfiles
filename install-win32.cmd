if not exist "%HOME%" set HOME=%HOMEDRIVE%%HOMEPATH%
if not exist "%HOME%" set HOME=%USERPROFILE%

call mklink /h %HOME%\_gvimrc .\gvimrc
call mklink /h %HOME%\_vimrc .\vimrc

call mkdir %HOME%\.vim\bundle
call git clone https://github.com/gmarik/vundle.git %HOME%\.vim\bundle\vundle

gvim -c BundleInstall! -c BundleClean -c qa

pause
