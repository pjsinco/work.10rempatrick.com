create table issue (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  edition ENUM('Peer Reviewer', 'Editorial Board', 'Editorial Advisory Board') NOT NULL,
  quarter ENUM('Winter', 'Spring', 'Summer', 'Fall') NOT NULL,
  `year` YEAR(4) NOT NULL,
  headline TEXT NOT NULL,
  main TEXT NOT NULL,
  lead_in text NOT NULL,
  kicker text,
  question TEXT NOT NULL,
  link TEXT NOT NULL,
  name VARCHAR(256) NOT NULL,
  occupation VARCHAR(256) NOT NULL,
  school VARCHAR(256) NOT NULL,
  involved TEXT,
  reviewing TEXT
) engine=InnoDB CHARSET=utf8 

--------------------------------------------------------------------------------
CREATE TABLE meta (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  edition ENUM('Peer Reviewer', 'Editorial Board', 'Editorial Advisory Board') NOT NULL,
  quarter ENUM('Winter', 'Spring', 'Summer', 'Fall') NOT NULL,
  `year` YEAR(4) NOT NULL
) engine=InnoDB CHARSET=utf8 

create table body (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  conn_id MEDIUMINT NOT NULL,
  headline TEXT,
  main TEXT,
  lead_in text,
  kicker text
) engine InnoDB CHARSET=utf8 

create table poll (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  question TEXT NOT NULL,
  link TEXT NOT NULL
) engine=InnoDB CHARSET=utf8 

create table peer (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  occupation VARCHAR(256) NOT NULL,
  school VARCHAR(256) NOT NULL,
  involved TEXT,
  reviewing TEXT
) engine=InnoDB CHARSET=utf8 

create table issue (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  conn_id MEDIUMINT,
  body_id MEDIUMINT,
  poll_id MEDIUMINT,
  peer_id MEDIUMINT,
  foreign key (conn_id) references meta(id),
  foreign key (body_id) references body(id),
  foreign key (peer_id) references peer(id),
  foreign key (poll_id) references poll(id)
)

create table resources (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `resource` TEXT,
  link TEXT,
  conn_id MEDIUMINT NOT NULL ,
  foreign key (conn_id) references meta(id)
) engine=InnoDB CHARSET=utf8 

-- change column name
alter table issue
  change main main_body TEXT NOT NULL

alter table issue
  change name peer_name VARCHAR(256) NOT NULL

alter table issue
  change occupation peer_occ VARCHAR(256),
  change school peer_school VARCHAR(256),
  change involved peer_inv text,
  change reviewing peer_rev text

