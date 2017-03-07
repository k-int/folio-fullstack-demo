yarn config set @folio:registry https://repository.folio.org/repository/npm-folio/

cd ../ui-users

yarn unlink
yarn link

cd ../ui-okapi-console

yarn unlink
yarn link

cd ../folio-fullstack-demo

yarn link "@folio/users"
yarn link "@folio-sample-modules/okapi-console"

yarn install
yarn start
