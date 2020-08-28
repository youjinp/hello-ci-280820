
push.github.secrets:
	$(info [*] run `source ./secrets` before calling this)
	$(info [*] place pem files in ./pems/ before calling this)
	github-secrets-writer \
		--owner $${SECRET_OWNER} \
		--repo $${SECRET_REPO} \
		--from-literal APPLE_ID=$${APPLE_ID} \
		--from-literal APPLE_PASSWORD=$${APPLE_PASSWORD} \
		--from-literal APP_IDENTIFIER=$${APP_IDENTIFIER} \
		--from-literal TEAM_ID=$${TEAM_ID} \
		--from-literal ITC_TEAM_ID=$${ITC_TEAM_ID} \
		--from-literal MATCH_REPO=$${MATCH_REPO} \
		--from-literal MATCH_PASSWORD=$${MATCH_PASSWORD} \
		--from-literal MATCH_GIT_BASIC_AUTHORIZATION=$${MATCH_GIT_BASIC_AUTHORIZATION}