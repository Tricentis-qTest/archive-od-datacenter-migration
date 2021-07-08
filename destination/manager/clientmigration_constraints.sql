
ALTER TABLE public.project_modules drop CONSTRAINT uq_project_modules_pid_projectid;
ALTER TABLE public.releases drop CONSTRAINT uq_releases_pid_projectid;
ALTER TABLE public.builds drop CONSTRAINT uq_builds_pid_projectid;
ALTER TABLE public.test_cycles drop CONSTRAINT uq_test_cycles_pid_projectid;
ALTER TABLE public.test_suites drop CONSTRAINT uq_test_suites_pid_projectid;
ALTER TABLE public.test_cases drop CONSTRAINT uq_test_cases_pid_projectid ;
ALTER TABLE public.test_case_run drop CONSTRAINT pk_test_case_run;
ALTER TABLE public.defects drop CONSTRAINT uq_defects_pid_projectid;
ALTER TABLE public.custom_fields drop CONSTRAINT uq_custom_fields_pro_obj_act_sys ;
ALTER TABLE public.custom_fields drop CONSTRAINT uq_custom_fields_sys_pro;
ALTER TABLE public.pid_increment drop CONSTRAINT pk_pid_increment;
ALTER TABLE public.requirements drop CONSTRAINT pk_requirements;
ALTER TABLE public.defects drop CONSTRAINT uq_defect_externalissueid_connectionid;
ALTER TABLE public.integration_module_fields drop CONSTRAINT uq_integration_module_fields_int_fie;
ALTER TABLE public.test_step_parameters_aud drop CONSTRAINT pk_test_step_parameters_aud;
ALTER TABLE public.projects_aud drop CONSTRAINT projects_aud_pkey;
ALTER TABLE public.project_modules_aud drop CONSTRAINT pk_project_modules_aud;
ALTER TABLE public.blob_handles_aud drop CONSTRAINT pk_blob_handles_aud;
ALTER TABLE public.test_case_results drop CONSTRAINT uq_test_case_results_tes_res;
ALTER TABLE public.client_user_settings drop CONSTRAINT uq_client_user_settings_cli_nam;
ALTER TABLE public.user_group_authorities drop CONSTRAINT uq_user_group_authorities_user_groups_authorities;

ALTER TABLE public.project_modules ADD CONSTRAINT uq_project_modules_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.releases ADD CONSTRAINT uq_releases_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.builds ADD CONSTRAINT uq_builds_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.test_cycles ADD CONSTRAINT uq_test_cycles_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.test_suites ADD CONSTRAINT uq_test_suites_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.test_cases ADD CONSTRAINT uq_test_cases_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.test_case_run ADD CONSTRAINT pk_test_case_run PRIMARY KEY (pid, projectid);
ALTER TABLE public.defects ADD CONSTRAINT uq_defects_pid_projectid UNIQUE (pid, projectid);
ALTER TABLE public.custom_fields ADD CONSTRAINT uq_custom_fields_pro_obj_act_sys UNIQUE (projectid, objecttypeid, active, systemfield);
ALTER TABLE public.custom_fields ADD CONSTRAINT uq_custom_fields_sys_pro UNIQUE (systemfield, projectid);
ALTER TABLE public.pid_increment ADD CONSTRAINT pk_pid_increment PRIMARY KEY (projectid, objecttypeid);
ALTER TABLE public.requirements ADD CONSTRAINT pk_requirements PRIMARY KEY (pid, projectid);
ALTER TABLE public.defects ADD CONSTRAINT uq_defect_externalissueid_connectionid UNIQUE (connectionid, externalissueid, externalprojectid);
ALTER TABLE public.integration_module_fields ADD CONSTRAINT uq_integration_module_fields_int_fie UNIQUE (integrationtypemapid, fieldorder);
ALTER TABLE public.test_step_parameters_aud ADD CONSTRAINT pk_test_step_parameters_aud PRIMARY KEY (id, rev);
ALTER TABLE public.projects_aud ADD CONSTRAINT projects_aud_pkey PRIMARY KEY (id, rev);
ALTER TABLE public.project_modules_aud ADD CONSTRAINT pk_project_modules_aud PRIMARY KEY (id, rev);
ALTER TABLE public.blob_handles_aud ADD CONSTRAINT pk_blob_handles_aud PRIMARY KEY (id, rev);
ALTER TABLE public.test_case_results ADD CONSTRAINT uq_test_case_results_tes_res UNIQUE (testcaserunid, resultnumber);
ALTER TABLE public.client_user_settings ADD CONSTRAINT uq_client_user_settings_cli_nam UNIQUE (clientuserid, name);
ALTER TABLE public.user_group_authorities ADD CONSTRAINT uq_user_group_authorities_user_groups_authorities UNIQUE (usergroupid, authorityid);