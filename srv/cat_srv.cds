using {copybookshop as my} from '../db/schema';

service CatalogService @(path: '/browse') {

  @requires: 'authenticated-user'
  @readonly
  entity Books as
    select from my.Books {
      *,
      author.name as author
    }
    excluding {
      createdBy,
      modifiedBy
    };

  @requires: 'authenticated-user'
  action submitOrder(book : Books:ID, quantity : Integer);
}
