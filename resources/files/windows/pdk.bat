@ECHO OFF
SET PDK_BASEDIR=%~dps0..
SET PDK_BASEDIR=%PDK_BASEDIR:\private\ruby\@@@RUBY_VERSION@@@\bin\..=%

SET PATH=%PDK_BASEDIR%\private\ruby\@@@RUBY_VERSION@@@\bin;%PATH%

SET RUBYLIB=%PDK_BASEDIR%\lib;%RUBYLIB%

SET RUBYLIB=%RUBYLIB:\=/%

SET SSL_CERT_FILE=%PDK_BASEDIR%\ssl\cert.pem
SET SSL_CERT_DIR=%PDK_BASEDIR%\ssl\certs
SET OPENSSL_CONF=%PDK_BASEDIR%\ssl\openssl.cnf

ruby -S -- pdk %*
