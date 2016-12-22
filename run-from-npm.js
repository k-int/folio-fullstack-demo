
cd ../stripes-core

git clean -xdf

cp ../demo/stripes.config.js .

npm config delete @folio:registry
npm config delete @folio-sample-modules:registry

mkdir node_modules
mkdir -p node_modules/@folio
mkdir -p node_modules/@folio-sample-modules

cd node_modules/@folio

ln -s ../../../stripes-connect
cd stripes-connect
git clean -xdf
npm install

cd ..

ln -s ../../../stripes-components

cd stripes-components
git clean -xdf
npm install

cd ..

ln -s ../../../stripes-loader
cd stripes-loader
git clean -xdf
npm install
npm run build

cd ..

cd ../@folio-sample-modules

ln -s ../../examples/trivial
ln -s ../../../ui-okapi-console
ln -s ../../../ui-users

cd ../../../

cd stripes-loader

mkdir node_modules
mkdir -p node_modules/@folio-sample-modules

cd node_modules/@folio-sample-modules

ln -s ../../../stripes-core/examples/trivial
ln -s ../../../ui-okapi-console
ln -s ../../../ui-users

cd ../../../

cd stripes-core

npm install
npm start run
