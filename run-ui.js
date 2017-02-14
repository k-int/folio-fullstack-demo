yarn config set @folio:registry https://repository.folio.org/repository/npm-folio/

cd ../ui-users

yarn unlink

cd ../folio-fullstack-demo

yarn install
yarn start
