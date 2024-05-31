using {copybookshop as my} from '../db/schema';

service AdminService @(requires: 'Admin') {
  entity Books   as projection on my.Books;
  entity Authors as projection on my.Authors;
}
