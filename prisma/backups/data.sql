SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict lLm0PjZgYMxAHY8NduGKOhYhSPOznZJNXA7sT3ndu84sQfV6Z4qAEeV5C7I7NDP

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
global:owner	Owner	Owner	global	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:24.387+00
global:admin	Admin	Admin	global	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:24.387+00
global:member	Member	Member	global	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:24.387+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:27.487+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:27.487+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:27.487+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:27.487+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-04-19 01:27:47.739+00	2026-04-19 01:39:27.487+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
credential:user	Credential User	Credential User	credential	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-04-19 01:39:21.139+00	2026-04-19 01:39:21.139+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
cb6f6b95-671a-49fd-874e-2aa0908b46e7	markjosephcidro@yahoo.com	Mark	Cid	$2a$10$94e2azvmOisEA7GT3H8Xr.z8H06jt.sD.to8DHVG6pOO1OqDTZLQ2	{"version":"v4","personalization_survey_submitted_at":"2026-04-19T01:46:20.287Z","personalization_survey_n8n_version":"2.16.1","companyType":"saas"}	2026-04-19 01:23:07.314+00	2026-04-26 04:00:58.745+00	{"userActivated": false}	f	f	\N	\N	2026-04-26	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX1/Ve4V0kwEoJDrTmdNDloAaotjvBhV28BOzL+9OAWY00Z1flXvrM2NIA2guEhdksiS5pODaz8nokwPKdAmxLn90q4P8UCpRKly2w+dq8UgplaYJF9fMiZ2dmR+LdnRiAVKYxL7flaaPnApovKLW8OGybBZqdFRI1/s=	airtableTokenApi	2026-04-26 02:28:35.058+00	2026-04-26 02:28:34.659+00	ECMnKDGlydQhXTAT	f	f	f	f	\N
Airtable Personal Access Token API	U2FsdGVkX1/Jogt1/q7JNHLn3yuDueOsDSR/7wjsdbaGeNgLE6XG7upvxT/1yb8rzF8OYcBZP/YEVllPaxq5Jb70UNepCFObXe6GheiNmt3Pj7MFveQ5rQ9wnAyvgXJTIUp9CMXatI4ID9c55zW1pw7v2triITDU9VyYejxtuwM=	airtableTokenApi	2026-04-26 02:43:32.156+00	2026-04-26 02:43:54.962+00	Siv1tzpvq7P4wmKc	f	f	f	f	\N
Shopify Access Token account	U2FsdGVkX19Lh/vLhC477yNhEClBsqbKVXqigScYmTVusSYkfAHjIAbixREALlUQ2K932kvvxUxBJFY3VykpdWJJ8fgIZfZesbDg+auOPy48stcT5cCVM9dHbZ1stWuJKRF7oAuPoGub6qINsP0jmlQA3wZ8bs5PRO8mEhdRXTcOgDMMezbE6VMQ8ynsgmiCFRx7ub5DVxGvCYvAdox1+lJV3s6hEth4QExazs46Wcb/KWcl0beyx1R8t0J7BF7kAYHq1cxuLFcC8D2YjFLO5M3tbW+/kwv2GfKf7AFJ1B14eCx42IrJ76Yt95D0Z1mC3I/ErkPVtKammjARKvl81uB3mjSdGVlvXWE/nfbCvqcOnIJjTfUT+5mqif+l4xEQkhg257nKghumXgVZmkZEWA92SR2fMSJu6Ix0+hqWYpdIpX97bknKPVBWr3kJvnTtikiOQ+cqYVyfLYHF5dNVpKUlfAgLhNhxJkvkLkozD6uWUllxlgsjthDMyxRMYl11xbGl56Y3aUxtjT+rR57BN6HNoROpjwZGOg/MERESu7CspT3Dhih/8E0AVhKPtEoRiFEhgIEuoM33lg2RJZjryu+6k8gNUAO6KD8W5bB0qKpeqhhGVUwqm1ad55iZD4Jx2ZWNDa5nktZ12WgiqtvcbVE0FmQ3gEj5uW2X/irLuVzc6/rtoHhPygELs2dKUYnIeQdiMj3Q/++SqRd2QEe7Og==	shopifyOAuth2Api	2026-04-26 05:00:40.565+00	2026-04-26 05:02:39.872+00	CNkqw3Z1bTRecWh9	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId") FROM stdin;
2dpoJu4Ig1ei82ez	Mark Cid <markjosephcidro@yahoo.com>	personal	2026-04-19 01:25:38.964+00	2026-04-19 01:45:49.275+00	\N	\N	cb6f6b95-671a-49fd-874e-2aa0908b46e7
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId") FROM stdin;
My workflow	f	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-32,0],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger","disabled":true}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2026-04-26 02:14:46.377+00	2026-04-26 03:19:50.437+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	cdc63629-0bdc-4aa3-b0c4-c7b7b131822c	0	uNANGd8ADwJpy3Uy	{"templateCredsSetupCompleted":true}	\N	f	32	\N	\N
My workflow 2	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","title":"=","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"CNkqw3Z1bTRecWh9","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	2026-04-26 04:09:19.341+00	2026-04-26 05:03:14.476+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	652a99d5-7b96-4169-b26b-b27a20647112	0	LTNzmHIZEnaJrUza	{"templateCredsSetupCompleted":true}	\N	f	16	\N	\N
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt") FROM stdin;
1	t	manual	\N	\N	2026-04-26 02:14:58.058+00	2026-04-26 02:15:02.064+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:14:56.901+00	db
2	t	manual	\N	\N	2026-04-26 02:46:41.696+00	2026-04-26 02:46:45.821+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:46:40.081+00	db
3	t	manual	\N	\N	2026-04-26 02:46:45.739+00	2026-04-26 02:46:50.426+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:46:44.334+00	db
4	f	manual	\N	\N	2026-04-26 02:58:49.279+00	2026-04-26 02:58:52.463+00	\N	error	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:58:48.192+00	db
5	t	manual	\N	\N	2026-04-26 02:59:23.482+00	2026-04-26 02:59:27.076+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:59:22.399+00	db
7	t	manual	\N	\N	2026-04-26 03:00:01.239+00	2026-04-26 03:00:04.203+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 03:00:00.082+00	db
6	t	manual	\N	\N	2026-04-26 03:00:00.507+00	2026-04-26 03:00:04.264+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 02:59:59.422+00	db
8	t	manual	\N	\N	2026-04-26 03:00:56.646+00	2026-04-26 03:01:00.858+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 03:00:55.49+00	db
9	t	manual	\N	\N	2026-04-26 03:01:16.251+00	2026-04-26 03:01:19.982+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 03:01:15.104+00	db
10	t	manual	\N	\N	2026-04-26 03:19:42.375+00	2026-04-26 03:19:47.462+00	\N	success	uNANGd8ADwJpy3Uy	\N	2026-04-26 03:19:41.317+00	db
11	t	manual	\N	\N	2026-04-26 05:04:30.452+00	2026-04-26 05:04:33.883+00	\N	success	LTNzmHIZEnaJrUza	\N	2026-04-26 05:04:29.382+00	db
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:14:46.377Z","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"e64454874fcb66ebf2d7258cfdfeb344e5d2eb0627682cae0519a99ce44d7988",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1777169701302,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1777169702002,"executionIndex":0,"source":"24","hints":"25","executionTime":60,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-04-25T22:15:02.007-04:00","April 25th 2026, 10:15:02 pm","10:15:02 pm","Saturday","2026","April","25","22","15","02","America/New_York (UTC-04:00)"]	ababa9ef-323a-4409-9cdc-f9a30f713cad
2	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:46:37.316Z","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"afd5c45b58c054e3d8f05dee202b778fadac512b87efa26afbdeb001322f1eba",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1777171604172,"source":"20","redaction":"21","triggerNode":"22"},"inclusive","Schedule Trigger",["23"],["24"],"manual",{"version":1,"policy":"25"},{"name":"9","type":"26"},{"startTime":1777169702002,"executionIndex":0,"source":"27","hints":"28","executionTime":60,"executionStatus":"29","data":"30"},{"startTime":1777171605029,"executionIndex":1,"source":"31","hints":"32","executionTime":791,"executionStatus":"29","data":"33"},"none","n8n-nodes-base.airtable",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-04-25T22:15:02.007-04:00","April 25th 2026, 10:15:02 pm","10:15:02 pm","Saturday","2026","April","25","22","15","02","America/New_York (UTC-04:00)","rec9DYhiBiSwiIaCE","2026-04-26T02:46:46.000Z",{"Task Name":"59","Description":"60"},"Create Table for Clients' Details","It will be used to store clients' data"]	abb210db-00df-4436-81d6-2927c0289c27
3	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:46:37.316Z","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"c805a8a27ce09b06d4b2be679df79e0a53bd250972633f877368d71d00621115",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1777171609047,"source":"20","redaction":"21","triggerNode":"22"},"inclusive","Schedule Trigger",["23"],["24"],"manual",{"version":1,"policy":"25"},{"name":"9","type":"26"},{"startTime":1777169702002,"executionIndex":0,"source":"27","hints":"28","executionTime":60,"executionStatus":"29","data":"30"},{"startTime":1777171609744,"executionIndex":1,"source":"31","hints":"32","executionTime":681,"executionStatus":"29","data":"33"},"none","n8n-nodes-base.airtable",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-04-25T22:15:02.007-04:00","April 25th 2026, 10:15:02 pm","10:15:02 pm","Saturday","2026","April","25","22","15","02","America/New_York (UTC-04:00)","recVHuagoithKekai","2026-04-26T02:46:50.000Z",{"Task Name":"59","Description":"60"},"Create Table for Clients' Details","It will be used to store clients' data"]	abb210db-00df-4436-81d6-2927c0289c27
4	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:58:42.355Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Due Date":"=","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"46368fe737582b564d74d1184dd0d83c720654af18ccd8642e5968c038bf3338",{"level":"15","tags":"16","description":"17","timestamp":1777172332161,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"When clicking ‘Execute workflow’":"23","Create a record":"24"},{},"Create a record",{},["25"],{},{},{},{"version":1,"establishedAt":1777172331451,"source":"26","redaction":"27","triggerNode":"28"},"warning",{},"'Due Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{"runIndex":0,"itemIndex":0,"nodeCause":"8"},"regular","ExpressionError","Invalid input for 'Due Date' [item 0]","ExpressionError: Invalid input for 'Due Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:206:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:541:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:136:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:32)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["29"],["30"],{"node":"31","data":"32","source":"33"},"manual",{"version":1,"policy":"34"},{"name":"35","type":"36"},{"startTime":1777172332109,"executionIndex":0,"source":"37","hints":"38","executionTime":3,"executionStatus":"39","data":"40"},{"startTime":1777172332114,"executionIndex":1,"source":"41","hints":"42","executionTime":347,"executionStatus":"43","error":"44"},{"parameters":"45","type":"46","typeVersion":2.2,"position":"47","id":"48","name":"8","credentials":"49"},{"main":"50"},{"main":"41"},"none","When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"51"},["52"],[],"error",{"level":"15","tags":"16","description":"17","timestamp":1777172332161,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"authentication":"53","resource":"54","operation":"55","base":"56","table":"57","columns":"58","options":"59"},"n8n-nodes-base.airtable",[208,0],"9aee5a50-9ced-4100-9b1e-13fbb75abc24",{"airtableTokenApi":"60"},["61"],["62"],{"previousNode":"35","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"63","mode":"64","cachedResultName":"65","cachedResultUrl":"66"},{"__rl":true,"value":"67","mode":"64","cachedResultName":"68","cachedResultUrl":"69"},{"mappingMode":"70","value":"71","matchingColumns":"72","schema":"73","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"74","name":"75"},["76"],["77"],"appNSRCpNs1BFui6e","list","AI Development Project Tracker","https://airtable.com/appNSRCpNs1BFui6e","tbloKBbYMaCfQupwG","Tasks","https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG","defineBelow",{"Task Name":"78","Description":"79","Due Date":"80","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},[],["81","82","83","84","85","86","87","88","89","90","91","92","93","94"],"Siv1tzpvq7P4wmKc","Airtable Personal Access Token API",{"json":"95","pairedItem":"96"},{"json":"95","pairedItem":"97"},"Create Module for n8n Course","For everyone who wants to be familiar with n8n","=",{"id":"98","displayName":"98","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"100","displayName":"100","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"101","displayName":"101","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"102","readOnly":false,"removed":false},{"id":"103","displayName":"103","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"104","options":"105","readOnly":false,"removed":false},{"id":"106","displayName":"106","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"107","readOnly":false,"removed":false},{"id":"108","displayName":"108","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"102","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"104","options":"110","readOnly":false,"removed":false},{"id":"111","displayName":"111","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"102","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"107","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"115","readOnly":false,"removed":false},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"102","readOnly":false,"removed":false},{},{"item":0},{"item":0},"Task Name","string","Description","Project","array","Status","options",["119","120","121","122","123","124"],"Due Date","dateTime","Assigned To","Priority",["125","126","127"],"Dependencies","Completion Date","Referenced Milestone","Estimated Effort (hrs)","number","Actual Effort (hrs)","Blocker Notes","From field: Dependencies",{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},{"name":"135","value":"135"},{"name":"136","value":"136"},"Not Started","In Progress","Blocked","Completed","To Do","Done","High","Medium","Low"]	aeecb679-7bd3-4a24-8fe1-071f98b50a0e
5	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:59:16.581Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"8730b23b9c3b2884a2942c1c4458c9cedddb62f6cb1df669b713fc2fa7e66212",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1777172365652,"source":"16","redaction":"17","triggerNode":"18"},["19"],["20"],"manual",{"version":1,"policy":"21"},{"name":"22","type":"23"},{"startTime":1777172366310,"executionIndex":0,"source":"24","hints":"25","executionTime":1,"executionStatus":"26","data":"27"},{"startTime":1777172366311,"executionIndex":1,"source":"28","hints":"29","executionTime":764,"executionStatus":"26","data":"30"},"none","When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],{"previousNode":"22","previousNodeOutput":0,"previousNodeRun":0},["35"],["36"],["37"],{"json":"38","pairedItem":"39"},{"json":"40","pairedItem":"41"},{},{"item":0},{"id":"42","createdTime":"43","fields":"44"},{"item":0},"rec5PE5iDCJLloGwt","2026-04-26T02:59:27.000Z",{"Task Name":"45","Description":"46","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"Create Module for n8n Course","For everyone who wants to be familiar with n8n"]	c3ccc9be-a0d9-4a06-aa4c-d544adb65e95
6	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:59:53.880Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-144,48],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"9b8923820f514f744bafcd43c0b079432425027b9c8ceeeef4ad6265eb2d6bad",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1777172403112,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1777172404262,"executionIndex":0,"source":"24","hints":"25","executionTime":1,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-04-25T23:00:04.263-04:00","April 25th 2026, 11:00:04 pm","11:00:04 pm","Saturday","2026","April","25","23","00","04","America/New_York (UTC-04:00)"]	ea84ffe6-a510-43d1-98d7-0a7f91ddb2e7
7	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T02:59:53.880Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-144,48],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"f467018ffd303b7fbe968a4d828a7c4de104c331b963e4e3b113f47fefcd514a",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1777172403535,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1777172404198,"executionIndex":0,"source":"24","hints":"25","executionTime":4,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-04-25T23:00:04.200-04:00","April 25th 2026, 11:00:04 pm","11:00:04 pm","Saturday","2026","April","25","23","00","04","America/New_York (UTC-04:00)"]	ea84ffe6-a510-43d1-98d7-0a7f91ddb2e7
8	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T03:00:23.886Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-32,0],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"91a4b2be2a2210c7b1b1b6c9de034671e8ee06f965d944abd3fb7d6c7e1a6599",{"Schedule Trigger":"14","Create a record":"15"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1777172459479,"source":"16","redaction":"17","triggerNode":"18"},["19"],["20"],"manual",{"version":1,"policy":"21"},{"name":"22","type":"23"},{"startTime":1777172460141,"executionIndex":0,"source":"24","hints":"25","executionTime":2,"executionStatus":"26","data":"27"},{"startTime":1777172460143,"executionIndex":1,"source":"28","hints":"29","executionTime":714,"executionStatus":"26","data":"30"},"none","Schedule Trigger","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],{"previousNode":"22","previousNodeOutput":0,"previousNodeRun":0},["35"],["36"],["37"],{"json":"38","pairedItem":"39"},{"json":"40","pairedItem":"41"},{"timestamp":"42","Readable date":"43","Readable time":"44","Day of week":"45","Year":"46","Month":"47","Day of month":"48","Hour":"49","Minute":"50","Second":"51","Timezone":"52"},{"item":0},{"id":"53","createdTime":"54","fields":"55"},{"item":0},"2026-04-25T23:01:00.142-04:00","April 25th 2026, 11:01:00 pm","11:01:00 pm","Saturday","2026","April","25","23","01","00","America/New_York (UTC-04:00)","recD1tPuA94mwMAIG","2026-04-26T03:01:01.000Z",{"Task Name":"56","Description":"57","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"Create Module for n8n Course","For everyone who wants to be familiar with n8n"]	fb93b230-0e45-4f2a-8f74-063f6e86e220
9	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T03:00:23.886Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-32,0],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"e214ba341f511036a6a934d7cae06e26e8de484bac7198a753a627793a64e3a5",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1777172478550,"source":"20","redaction":"21","triggerNode":"22"},"inclusive","Schedule Trigger",["23"],["24"],"manual",{"version":1,"policy":"25"},{"name":"9","type":"26"},{"startTime":1777172460141,"executionIndex":0,"source":"27","hints":"28","executionTime":2,"executionStatus":"29","data":"30"},{"startTime":1777172479243,"executionIndex":1,"source":"31","hints":"32","executionTime":738,"executionStatus":"29","data":"33"},"none","n8n-nodes-base.airtable",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-04-25T23:01:00.142-04:00","April 25th 2026, 11:01:00 pm","11:01:00 pm","Saturday","2026","April","25","23","01","00","America/New_York (UTC-04:00)","recNmAf0mNioCcZXO","2026-04-26T03:01:20.000Z",{"Task Name":"59","Description":"60","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"Create Module for n8n Course","For everyone who wants to be familiar with n8n"]	fb93b230-0e45-4f2a-8f74-063f6e86e220
10	{"id":"uNANGd8ADwJpy3Uy","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T02:14:46.377Z","updatedAt":"2026-04-26T03:00:23.886Z","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-32,0],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"f82ecf567c61f9d6fd7cc59bcde09d3861802dbf1cef6070842c2213dc47cb03",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1777173586154,"source":"18","redaction":"19","triggerNode":"20"},"inclusive",["21"],"manual",{"version":1,"policy":"22"},{"name":"9","type":"23"},{"startTime":1777173587431,"executionIndex":0,"source":"24","hints":"25","executionTime":29,"executionStatus":"26","data":"27"},"none","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-04-25T23:19:47.460-04:00","April 25th 2026, 11:19:47 pm","11:19:47 pm","Saturday","2026","April","25","23","19","47","America/New_York (UTC-04:00)"]	fb93b230-0e45-4f2a-8f74-063f6e86e220
11	{"id":"LTNzmHIZEnaJrUza","name":"My workflow 2","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-26T04:09:19.341Z","updatedAt":"2026-04-26T05:03:14.476Z","nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"apiVersion":"","authentication":"oAuth2","resource":"product","operation":"create","title":"=","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"CNkqw3Z1bTRecWh9","name":"Shopify Access Token account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"528306cb3edbc294c3b243e8b44cf29fa8b52e5e01cd3d32c2c410da6ca3f8f3",{"When clicking ‘Execute workflow’":"14"},{},"When clicking ‘Execute workflow’",{},[],{},{},{},{"version":1,"establishedAt":1777179873232,"source":"15","redaction":"16","triggerNode":"17"},["18"],"manual",{"version":1,"policy":"19"},{"name":"7","type":"20"},{"startTime":1777179873881,"executionIndex":0,"source":"21","hints":"22","executionTime":1,"executionStatus":"23","data":"24"},"none","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"25"},["26"],["27"],{"json":"28","pairedItem":"29"},{},{"item":0}]	652a99d5-7b96-4169-b26b-b27a20647112
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	17	7	2026-04-26 02:03:25.856+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
150	1771500000001	AddUnshareScopeToCustomRoles1771500000001
151	1771500000002	AddFilesColumnToChatHubAgents1771500000002
152	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
153	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
154	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
155	1772700000000	AddTypeToChatHubSessions1772700000000
156	1772800000000	CreateRoleMappingRuleTable1772800000000
157	1773000000000	CreateCredentialDependencyTable1773000000000
158	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
159	1774854660000	CreateInstanceVersionHistoryTable1774854660000
160	1775000000000	CreateInstanceAiTables1775000000000
161	1775116241000	CreateTokenExchangeJtiTable1775116241000
162	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
163	1776000000000	CreateTrustedKeyTables1776000000000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
2dpoJu4Ig1ei82ez	cb6f6b95-671a-49fd-874e-2aa0908b46e7	project:personalOwner	2026-04-19 01:25:38.964+00	2026-04-19 01:25:38.964+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:updateRedactionSetting	workflow:updateRedactionSetting	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:updateRedactionSetting
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	workflow:publish
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:updateRedactionSetting
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	workflow:publish
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	insights:read
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:updateRedactionSetting
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:updateRedactionSetting
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:editor	workflow:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:publish
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5zQjhaN0psSHh4WjZMSnZtZHRXdFlNUlNHWlZTQjVFZUxSVXY3Q0hjWFJBVkdyRmxYUGVTQWt3UVl0cXBNeUJ3XG51WXBjMGV0RXd6VkVqWFJSTkJtS2FKRzYySDdLbW4wcjdiUE9YWVZWV0pCdDRkdEtKS0poZ3pJSzlaZU9UQlhMXG5WWHQzVXpvTkJ1VEppN1R6YWJjcnhHei9wUGg4NmR2N0N0cjJhOWRweGdtc3Q0VGlZVUpqUUYrLy9TcXN1NWVnXG5JNmZ4bXMyTjB5LzlYanpTMUphOVN6UCtpRFJ0bTRmaTVwTXZQY1BINjBjMnJucFBpU0dISmx3THhIdFJLMGVBXG43ZUkxalNoTXlVa2NmV1FIL1h0NXMwR25meGl4OGZoT1ZjcjJjUE92YnA5RmFqdEJCeDFHelRFWHFaOHhyZTJMXG5ILzQwU004QUV4TEFUdk1GWVhJRjB3PT18fFUyRnNkR1ZrWDErVGJKMEoyZEt5OHpIYWU0alRpbGFnOTNtMlV6XG4xRTJWSHg0ZEo5L0NrUlZuZzNPQzRTNlhGdFBQc05qMzZwVEVNM2lWV05scGR2d081L09XYmN4QkExSGFGUlUwXG5qcElsdlhGQ3BDMFM0SUllMXZ5NG9taHJxK1BvZ1Rac25JUm5iZm5CemhNZTRXbGFpRGxkY3hPRmY1MUE4N2NGXG5TWXNlUGZHMFo4YWN2ZVhrSG9kTHhwWHlmdnRlVHc5OHYxeVBjK0xSL3NFUE52TkJ4cHR0MW5wNTJlZ2l1SGVPXG5ZL0VETjczUksrM1pKeE83SUVJN1paVVdicHdrR0dNbmYzTktGVzlDTnV2VEljNi82MzlZQ25jQ21peXgxQWFuXG55OElvcjd6OFpxSENET2g3NGNJSDhYLytObWV0b0ZHblAvN29DcmFKT283VDh2SElaYnNBV09VcDc3aWpxU2Y4XG5PU2Q5NW9POVRWU0sxbnd3OFZycDhlZFB3THhFTnlHcUNNbE1zOU91dll1dHB3VStwQlBxSE5mamxTdHE5YnprXG5tVktsRXFFRjVQU0h3MDFjdThIUExrbzVMdEJUN0psU0hLREhZUHpVK0tHL1MrZVlPWGZWMi9EZEFoTGI0dnJHXG5sLy9iNDBHZmkxUHFjV0ZQdEU1cnlzNUxRNk1GTGJQOHJYNDNOWGVZK1ZlcjBYbmpkZWVJR0hnZTZCMDJyVXQvXG5HNkwvN1V0ZEtsOW1XcmtoM2c1alJZVmljOTV6Nm8yZmptU0FpbzVCdWRhQ0pza3dteFpSR2d1S2JXRENIb0oyXG5ycThXWGIwMllnS1U3QlBEcE16S09XdEZ2SUdMWnhYckZQd2ExRGRWY3NKaXIzSGVQVmEwSm5XSnhWazlTUnRtXG5OUEM5ajYxdnFLS01xYmE0bEpmWEhCVjN0bDF4SHl4REhNNEJxWjdjVXFST1NtbTFNVWNuZTZHREc0OWZrN0M3XG5MNXY2dDNlWHNPd0UwVEhuRXlBVkRxVi8yMkE0cUJjVG9TaUFSNE5JQVZ5NHdrK0E4aDhHZ0JSYVFWbTNTOTV5XG54dXU5ei9ORlBFREZPOW5NZ1hxS1NHQS9qQ2U0dzMwbFRPdWhucGNaTGd4TGcwRkxHNGw0cTBsN3hoOTVISXhNXG5TdUlEVytBV09FVHNPcVdKeVg2VUVKNlZ5UlpmV1dya2lRemRybmVDc1pvWjk4LzJnQ3N4ZkpKMTlQOGdqZHlmXG5kQ2lLQ0p6YlJDN3BQeVc5dnBhRDkwVERpZFZTRHNWdDVLNmVrM1BVeDJzWmlFV01tOFBveW1SNWpKbWs4cUtRXG50SWx4bWxSZFphVmE1dzBEeUdJRmlQeFNMdUFYeVNLMks4WTB5V0FBdVlsRnhydzcxc2lSUTI0WmF0cElJOHVUXG5tajBLVWNoWjVMMmtyZWVVTzJVUmVNaTdiMXFnYmx0WGVVeDNPenlVb25zUyt1N2F1NEtJb05aVnBFTmZmT1MwXG5lS1haVTY4Y0JZSm14YnNQbE9UNktIbVk1U1VQN0plZXNIbmVpSHVFVEJZbWJZcWVlWUIxTG52enZ2a2V0aUtrXG52OHRtRXN6YStWSlh2bnJmcUxzY0VHcEtaR3dzU0YrMGVkcUdVQVNxMyszQ1hPSW1zVUlFWWpmM0F0T254VUR2XG5rWXA0dWxxVW15NDZXQncwSWhnNEk2RzJ3N283d2lWR0Y4Vlc2cThzV2NsYi8yMm01bkVZRERpdGo1QWdJOUhpXG5MVFhHaUIxRnBsbnpEUklNV3VVbmhxVlJtYW9NWU50SnFxQWpOd2ZnZGNnWldRQWRHdXoyUFlDMkNNemVTTDNTXG5LWUl2V3JremtYcVJIVlNsUkFJQUhwRmZubFNsZmNGTUltTjlqZjBTcWVGQ0xwc0w2M3E5ZjlCT05WVzhtcitkXG40cjlkRVBsNkNYcUV2TDE5eFFDV256STRYUDhtSzlpaTBiYndpMjVvUEdoY1JrMjNDRy9qNkNKS0xaSi9TOGgvXG5PU2tTZGtkSE8wMDlQNUtrQzdpQnVEVUVrR0tseGhyMjVpc2hITHdNN2lCQmsyNXNTY01jRVNjTVBMYVgxSDB4XG5vSG15c2lYYnFVaFJaL1owd3R2dmhrdm54N1A3dWd6ZGlLSWh0NUVjMjBSRHYwRGJ5T2ZaMkJLRzI5c0MwOHhMXG41UHVueWdmQlFuN0dZdGxyMGZyOHlzZnQ2Mlc1Q0owek1keEthUWRmMllXZThlOWlRclhQSlIrSzRIMWN0d3g0XG5JKzdCc2YrZHVWNUNqYVVvZXBPWWU2QzY5djR5ZUd0TWE3NytUVG5BMXBrOXdKRk1uYmFTazhlNnRKSm1pRFFhXG5aUXN5bWhuZHluTGFiS0dBa3gwWmxhOGE4Y1RDclBBbkFxa3M1QzFwSm9GVnFiL2JtTkcxSnVmUXBJZ0tmRytRXG5Ec3lleHZZYmp1cm5XeHdRcUxxeHFjeTlvcmZhdTg1cWhzbUdjOFVIMkprSzBlNW52MmFqY25EQVZBY28wYW5HXG56L0tCcXpNRWxHZ0d0VkR3aVVKeGxhdEoyL05BY3hNZkpkZFhHOVpHdEVRaittVVZYTzlmbkZkVVFtdTVsZmRQXG5pVlhyQ2xjREdHWkx5Z0dMcHlWUDFLbTFYdklybFRweGdnZ2JWdURpNzNaUzRPTjF2VFBZS1lOUUt5TWNOaHN5XG5PYWhOZWQzM1hTUmlFUURvQUVmWnRYTTVOQXNROGhUczR2aW9UL21FUkdoTzhzRnpPRHN0RXNnNjV2UHFFNXVLXG4rb0d6Z0RBTy83ZFBNQTh4cUl5Y3R2MlUzSFVUWXdSN1k1R0xkOGhOVlBXNC9OQlpodXFnM0NCWU1DVWNha0Z1XG5wY295SDdVejg1a3B5UXVqT1FpOTdpUjcvOTFJZWlUbDhXczdCd2czVDlSQXZrRVUvWUlMK1huWVdrM3lXUEdQXG54MHM0MlNmbDBTZlJQRHNRVmFmUzdYNDg1UTQ0NXB6akwzMXlHS3BlenNueXZ4UFRlZm1MSExER0IrcmtwWHNzXG5BZVNZT1cvMlM2WWlKU1R2RzlYUE9vanlMRGZXcFU5S2hpWTZHNWFad082ZlVoUGc9PXx8dkpzQkFKcUpQZEc5XG4wUGlUTTBicGJRbzZoQW9sVm9qWGhtNWtzUUVNUjl6NmcvMWZMK1F1dzNXOFRsMWxNd1pIdERCYmxwYmF4TFphXG5NcWk0bzhHRkl0YTVVd0VsMHdkbXRaWHJMNmdPNEp2eHF4VG1mcnE2M2RjSWsyNFhOQU1wN1NIMjhRdUxjQ09nXG5Gclh0VXVEWVM5ZTNFY1lTN0RsbmlQQkJnVE5rUkNHYUZ4azMzWkxMM01ORjZ0VUpYWFVqTVVEOFhIZ2xPUXl1XG5sNVV1UUJtdmluc0g1cWhwL05GUmpLZmxvZmpVZ3FyYXZJbGtoWWJwMzc5M0hTSVpGTzI0cUpRb3ZaY2ZtYjkvXG4rMHVHaUdIalJQZjhjcGN4R0E4azFTeDdseFM1L2JhYWxLdnhKZytXRzRDN0FadU1KWksxUDZzMWxpMUU5clV2XG5wMCtZTkgyVXVnPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
ECMnKDGlydQhXTAT	2dpoJu4Ig1ei82ez	credential:owner	2026-04-26 02:28:35.058+00	2026-04-26 02:28:35.058+00
Siv1tzpvq7P4wmKc	2dpoJu4Ig1ei82ez	credential:owner	2026-04-26 02:43:32.156+00	2026-04-26 02:43:32.156+00
CNkqw3Z1bTRecWh9	2dpoJu4Ig1ei82ez	credential:owner	2026-04-26 05:00:40.565+00	2026-04-26 05:00:40.565+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
uNANGd8ADwJpy3Uy	2dpoJu4Ig1ei82ez	workflow:owner	2026-04-26 02:14:46.377+00	2026-04-26 02:14:46.377+00
LTNzmHIZEnaJrUza	2dpoJu4Ig1ei82ez	workflow:owner	2026-04-26 04:09:19.341+00	2026-04-26 04:09:19.341+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
125	LTNzmHIZEnaJrUza	16	nodeType	n8n-nodes-base.manualTrigger	{"nodeId":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","nodeVersion":1}	1	2026-04-26 05:03:17.798+00	\N
126	LTNzmHIZEnaJrUza	16	nodeType	n8n-nodes-base.shopify	{"nodeId":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","nodeVersion":1}	1	2026-04-26 05:03:17.798+00	\N
127	LTNzmHIZEnaJrUza	16	credentialId	CNkqw3Z1bTRecWh9	{"nodeId":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","nodeVersion":1}	1	2026-04-26 05:03:17.798+00	\N
92	uNANGd8ADwJpy3Uy	32	nodeType	n8n-nodes-base.airtable	{"nodeId":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","nodeVersion":2.2}	1	2026-04-26 03:19:53.522+00	\N
93	uNANGd8ADwJpy3Uy	32	credentialId	Siv1tzpvq7P4wmKc	{"nodeId":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","nodeVersion":2.2}	1	2026-04-26 03:19:53.522+00	\N
94	uNANGd8ADwJpy3Uy	32	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"e24b10f3-2359-47f4-a66e-33c50432260b","nodeVersion":1.3}	1	2026-04-26 03:19:53.522+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
f5744d67-467e-456b-a750-8cb7d1b2f9a2	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:24:24.92+00	2026-04-26 02:24:24.92+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record"}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
37589863-607b-4829-9b8a-d66522b81abd	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:24:34.056+00	2026-04-26 02:24:34.056+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record"}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
77b35c6d-bba8-4f25-b9eb-96e0dadd5d22	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:28:43.7+00	2026-04-26 02:28:43.7+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"ECMnKDGlydQhXTAT","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
7374f6f7-37b1-4b57-a787-ad245e664f07	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:36:46.637+00	2026-04-26 02:36:46.637+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":null,"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"ECMnKDGlydQhXTAT","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
52070585-7595-4cf5-8de7-a767a026a9d6	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:36:55.381+00	2026-04-26 02:36:55.381+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"ECMnKDGlydQhXTAT","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
10e39ebf-de8c-4f41-a61f-abf813c20b82	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:43:39.781+00	2026-04-26 02:43:39.781+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token account 2"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
2860aa4d-b24c-40de-85e6-5b65d530fa41	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:44:03.473+00	2026-04-26 02:44:03.473+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
f6c49266-a4e0-44f0-a454-27829a279595	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:55:58.933+00	2026-04-26 04:55:58.933+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"42ec2491-c566-4617-8261-ebf3ac5bd05b","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"G835aGR0oRT5Txdw","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a product","type":"main","index":0}]]}}	\N	t	\N
5b0e49b4-450a-4c76-9461-7fdd2752242c	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:44:45.99+00	2026-04-26 02:44:45.99+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":null,"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
2fa4cd83-0017-4d51-8c92-a3b08e25b133	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:44:55.328+00	2026-04-26 02:44:55.328+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
df47c79d-cfb0-4caf-a93b-bb9c92edc673	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:46:10.082+00	2026-04-26 02:46:10.082+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
abb210db-00df-4436-81d6-2927c0289c27	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:46:30.413+00	2026-04-26 02:46:30.413+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
27db5c16-9619-4096-ac93-0217be3c02b7	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:59:15.021+00	2026-04-26 04:59:15.021+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","operation":"get","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[256,48],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Get a product","credentials":{"shopifyOAuth2Api":{"id":"QykHeNfC8s5QXKfZ","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
4b0ef282-6dd2-4f4d-8c83-b53c04d7611e	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 05:00:05.306+00	2026-04-26 05:00:05.306+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","operation":"get","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Get a product"}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
652a99d5-7b96-4169-b26b-b27a20647112	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 05:03:14.802+00	2026-04-26 05:03:14.802+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","title":"=","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"CNkqw3Z1bTRecWh9","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
5615758b-4a8b-4096-9232-82ce8aeaf793	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:49:40.339+00	2026-04-26 02:49:40.339+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
70d57bb8-6f43-449c-be2e-c906305f815d	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:53:42.989+00	2026-04-26 02:53:42.989+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data","Due Date":"={{ $json.Month }}{{ $json['Day of mon }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
10bd5519-84b6-4704-af70-e9bd57fd6dd8	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:55:47.535+00	2026-04-26 02:55:47.535+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"6644fcfc-774b-4337-89d7-cb481b873ef6","name":"Schedule Trigger","disabled":true},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data","Due Date":"="},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
103d60fa-68b7-4ee7-b0c1-45b395126da3	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:55:57.644+00	2026-04-26 02:55:57.644+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data","Due Date":"="},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
e84b64eb-2c0d-4c0f-8db8-0cb8bdf3baf7	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:57:45.279+00	2026-04-26 02:57:45.279+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Table for Clients' Details","Description":"It will be used to store clients' data","Due Date":"=","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
aeecb679-7bd3-4a24-8fe1-071f98b50a0e	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:58:36.404+00	2026-04-26 02:58:36.404+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Due Date":"=","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
ea84ffe6-a510-43d1-98d7-0a7f91ddb2e7	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:59:47.118+00	2026-04-26 02:59:47.118+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"},{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-144,48],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
64229749-668e-4a04-a86e-94094969133f	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 02:58:02.151+00	2026-04-26 02:58:02.151+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create n8n Module for ","Description":"It will be used to store clients' data","Due Date":"=","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,0],"id":"a3c23a03-ba6a-48e2-8ad4-dc37a2dd45c4","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
cdc63629-0bdc-4aa3-b0c4-c7b7b131822c	uNANGd8ADwJpy3Uy	Mark Cid	2026-04-26 03:19:50.763+00	2026-04-26 03:19:50.763+00	[{"parameters":{"operation":"create","base":{"__rl":true,"value":"appNSRCpNs1BFui6e","mode":"list","cachedResultName":"AI Development Project Tracker","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e"},"table":{"__rl":true,"value":"tbloKBbYMaCfQupwG","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/appNSRCpNs1BFui6e/tbloKBbYMaCfQupwG"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone who wants to be familiar with n8n","Estimated Effort (hrs)":0,"Actual Effort (hrs)":0},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Blocked","value":"Blocked"},{"name":"Completed","value":"Completed"},{"name":"To Do","value":"To Do"},{"name":"Done","value":"Done"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Dependencies","displayName":"Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Completion Date","displayName":"Completion Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Referenced Milestone","displayName":"Referenced Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Estimated Effort (hrs)","displayName":"Estimated Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Actual Effort (hrs)","displayName":"Actual Effort (hrs)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Blocker Notes","displayName":"Blocker Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"From field: Dependencies","displayName":"From field: Dependencies","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[208,0],"id":"9aee5a50-9ced-4100-9b1e-13fbb75abc24","name":"Create a record","credentials":{"airtableTokenApi":{"id":"Siv1tzpvq7P4wmKc","name":"Airtable Personal Access Token API"}}},{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-32,0],"id":"e24b10f3-2359-47f4-a66e-33c50432260b","name":"Schedule Trigger","disabled":true}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N
e220902e-8c1b-4c45-8745-d367008192f8	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:09:19.341+00	2026-04-26 04:09:19.341+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"a0e30a8f-3359-43c5-97de-cf11c9c9beb4","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"cfd57ff4-4065-4dd9-95f4-3752083670e4","name":"Create a product"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a product","type":"main","index":0}]]}}	\N	t	\N
e9974fc5-e83e-41b1-ab09-fe3f275acbcc	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:47:09.293+00	2026-04-26 04:47:09.293+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"a0e30a8f-3359-43c5-97de-cf11c9c9beb4","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
3622bc94-36a6-476c-863a-e83fbbe80e4e	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:51:44.256+00	2026-04-26 04:51:44.256+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"42ec2491-c566-4617-8261-ebf3ac5bd05b","name":"Create a product"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a product","type":"main","index":0}]]}}	\N	t	\N
44450d24-9ab1-418d-99e5-4884df043566	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:55:39.119+00	2026-04-26 04:55:39.119+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"42ec2491-c566-4617-8261-ebf3ac5bd05b","name":"Create a product"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a product","type":"main","index":0}]]}}	\N	t	\N
00ca30ab-75f2-4e73-8f31-61880a7d40be	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 04:55:50.828+00	2026-04-26 04:55:50.828+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"42ec2491-c566-4617-8261-ebf3ac5bd05b","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"QykHeNfC8s5QXKfZ","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a product","type":"main","index":0}]]}}	\N	t	\N
41009404-44eb-471c-826c-585899fd6f5c	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 05:00:48.057+00	2026-04-26 05:00:48.057+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","operation":"get","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Get a product","credentials":{"shopifyOAuth2Api":{"id":"CNkqw3Z1bTRecWh9","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
099106a0-da4f-4322-969a-124107d74554	LTNzmHIZEnaJrUza	Mark Cid	2026-04-26 05:03:04.56+00	2026-04-26 05:03:04.56+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"9b507681-edf0-4b70-a1ef-a3e0ee152ea1","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"product","additionalFields":{}},"type":"n8n-nodes-base.shopify","typeVersion":1,"position":[208,0],"id":"4c9ee5c2-69b3-4d0d-b8f8-820f8e4f0983","name":"Create a product","credentials":{"shopifyOAuth2Api":{"id":"CNkqw3Z1bTRecWh9","name":"Shopify Access Token account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
1	2026-04-26 02:46:46.283+00	data_loaded	uNANGd8ADwJpy3Uy	1	2	\N
1	2026-04-26 02:58:53.966+00	manual_error	uNANGd8ADwJpy3Uy	0	5	My workflow
9	2026-04-26 03:19:49.856+00	manual_success	uNANGd8ADwJpy3Uy	0	1	My workflow
1	2026-04-26 05:04:35.367+00	manual_success	LTNzmHIZEnaJrUza	0	12	My workflow 2
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 11, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 163, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 127, true);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 12, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict lLm0PjZgYMxAHY8NduGKOhYhSPOznZJNXA7sT3ndu84sQfV6Z4qAEeV5C7I7NDP

RESET ALL;
