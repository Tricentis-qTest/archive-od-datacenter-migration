\copy (SELECT fromid,id FROM projects WHERE clientid = 30318 and fromid is not null) to 'projects.csv' (format csv)
\copy (SELECT fromid,id FROM project_modules WHERE clientid = 30318 and fromid is not null) to 'project_modules.csv' (format csv)
\copy (SELECT fromid,id FROM releases WHERE clientid = 30318 and fromid is not null) to 'releases.csv' (format csv)
\copy (SELECT fromid,id FROM test_cycles WHERE clientid = 30318 and fromid is not null) to 'test_cycles.csv' (format csv)
\copy (SELECT fromid,id FROM insights.portfolios WHERE clientid = 30318 and fromid is not null) to 'portfolios.csv' (format csv)
\copy (SELECT fromid,id FROM custom_fields WHERE clientid = 30318 and fromid is not null) to 'custom_fields.csv' (format csv)
\copy (SELECT cfc.fromid,cfc.id FROM custom_field_configurations cfc inner join custom_fields cf on cfc.customfieldid = cf.id WHERE cf.clientid = 30318 and cfc.fromid is not null) to 'custom_field_configurations.csv' (format csv)
\copy (select distinct u.fromid,u.id from users u inner join client_users cu on cu.userid = u.id where cu.clientid = 30318 and u.issampleuser is null and u.fromid is not null) to 'users.csv' (format csv)