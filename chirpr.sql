use blogs;
select * from blogs;

use chirpr;
select * from chirps;

create user 'karen'@'localhost'
identified by 'blah';

grant all privileges
on chirpr.*
to 'karen'@'localhost';

select * from chirps;
select * from users;

use chirpr;
DROP USER 'admin'@'localhost';
show grants for 'karen'@'localhost'

