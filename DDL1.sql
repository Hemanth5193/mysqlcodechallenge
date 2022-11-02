CREATE DATABASE insurance_company;
use insurance_comapny;
CREATE TABLE t_agent(
agent_id VARCHAR(25) ,
agent_name VARCHAR(100) NULL,
agent_email VARCHAR(50) NULL,
agent_city VARCHAR(100) NULL,
agent_phone DECIMAL(15,0) NULL,
TARGET_POLICY_SUM DECIMAL(15,0) NULL,
PRIMARY KEY(agent_id));

CREATE TABLE t_policy(
policy_id VARCHAR(25) ,
policy_name VARCHAR(100) NULL,
agent_id VARCHAR(25) ,
policy_type VARCHAR(100) NULL,
policy_sum DECIMAL(10,0) NULL,
policy_status VARCHAR(100) NULL,
policy_tenure DECIMAL(5,0) NULL,
PRIMARY KEY(policy_id),
FOREIGN KEY(agent_id) REFERENCES t_agent(agent_id));

CREATE TABLE t_member(
member_id VARCHAR(25) ,
member_name VARCHAR(100) NULL,
member_email VARCHAR(100) NULL,
member_city VARCHAR(100) NULL,
member_phone DECIMAL(10,0) NULL,
agent_id VARCHAR(100),
policy_id VARCHAR(100),
PRIMARY KEY(member_id),
FOREIGN KEY(agent_id) REFERENCES t_agent(agent_id),
FOREIGN KEY(policy_id) REFERENCES t_policy(policy_id));