
cd ../stripes-core

git clean -xdf

cp ../demo/stripes.config.js .

npm config delete @folio:registry
npm config delete @folio-sample-modules:registry

npm config set @folio:registry https://repository.folio.org/repository/npm-folio/

npm install

npm config set @folio-sample-modules:registry https://repository.folio.org/repository/npm-folio/

npm install @folio-sample-modules/trivial
npm install @folio-sample-modules/ui-okapi-console
npm install @folio-sample-modules/ui-users

npm start run
