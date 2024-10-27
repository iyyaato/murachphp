-- Create the DBAAdmin user account
CREATE USER 'DBAAdmin'@'localhost' IDENTIFIED BY 'SafeP4ss0rd-47';

-- Grant SELECT and UPDATE permissions to DBAAdmin on the clients table
GRANT SELECT, UPDATE ON MyGuitarShop.clients TO 'DBAAdmin'@'localhost';

-- Create the DRobinton user account
CREATE USER 'DRobinton'@'localhost' IDENTIFIED BY 'NotSafePasswordChangeATNextLogin';

-- Grant SELECT and DELETE permissions to DRobinton on the clients table
GRANT SELECT, DELETE ON MyGuitarShop.clients TO 'DRobinton'@'localhost';

-- Create the TonyMasters user account
CREATE USER 'TonyMasters'@'localhost' IDENTIFIED BY '27SaferPassword^';

-- Grant SELECT and INSERT permissions to TonyMasters on the clients table
GRANT SELECT, INSERT ON MyGuitarShop.clients TO 'TonyMasters'@'localhost';

-- Create the Most_Privileged role without a password
CREATE ROLE 'Most_Privileged';

-- Grant UPDATE and DELETE permissions to Most_Privileged on the clients table
GRANT UPDATE, DELETE ON MyGuitarShop.clients TO 'Most_Privileged';

-- Assign the Most_Privileged role to all users
GRANT 'Most_Privileged' TO 'DBAAdmin'@'localhost', 'DRobinton'@'localhost', 'TonyMasters'@'localhost';
