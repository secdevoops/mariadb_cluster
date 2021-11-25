insert into role(rolename,description) values('ADMIN', 'Admin Role');
insert into role(rolename,description) values('USER', 'User Role');

insert into user_account(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) 
values('admin','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', true, true, true, true);

insert into user_account_role(user_id, role_id) values((select id from user_account where username='admin'), (select id from role where rolename='ADMIN'));
