delete from user_role;

delete from app_user;
insert into app_user(id, username, password, first_name, last_name, address, city, country, email, phone_number, postal_code, province, website, password_hint, version, account_enabled, account_expired, account_locked, credentials_expired)
values (-1, 'user', 'b6b1f4781776979c0775c71ebdd8bdc084aac5fe', 'Tomcat', 'User', null, 'Denver', 'US', 'matt_raible@yahoo.com', null, '80210', 'CO', 'http://tomcat.apache.org', '<![CDATA[A male kitty.]]>', '1', '1', '0', '0', '0');

insert into app_user(id, username, password, first_name, last_name, address, city, country, email, phone_number, postal_code, province, website, password_hint, version, account_enabled, account_expired, account_locked, credentials_expired)
values (-2, 'admin', 'a40546cc4fd6a12572828bb803380888ad1bfdab', 'Matt', 'Raible', null, 'Denver', 'US', 'matt@raibledesigns.com', null, '80210', 'CO', 'http://tomcat.apache.org', '<![CDATA[NOT a male kitty.]]>', '1', '1', '0', '0', '0');

delete from role;
insert into role(id, name, description)
values (-1, 'ROLE_ADMIN', '<![CDATA[Administrator role (can edit Users)]]>');
insert into role(id, name, description)
values (-2, 'ROLE_USER', '<![CDATA[Default role for all Users]]>');

insert into user_role(user_id, role_id)
values (-1,-2);
insert into user_role(user_id, role_id)
values (-2,-1);
