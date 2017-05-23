yarn config set @folio:registry https://repository.folio.org/repository/npm-folio/

cd ../ui-users

yarn unlink
yarn link

cd ../folio-fullstack-demo

yarn link "@folio/users"

yarn install
yarn start
