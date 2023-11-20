#!/bin/bash

cd /var/www/html
rm -rf public static

--

#!/bin/bash

cd /var/www/html
sudo mkdir build

echo ">>> install node modules ***********************"
npm install

echo ">>> build project"
npm run build

echo ">>> copy build results to web root directory ***"
mv -f ./build/* ./

echo ">>> remove template files & directories ********"
rm -rf build src scripts

echo '>>> change owner to ubuntu *********************'
chown -R ubuntu /var/www/html