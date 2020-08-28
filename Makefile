
push.github.secrets:
	$(info [*] run `source ./secrets` before calling this)
	$(info [*] place pem files in ./pems/ before calling this)
	MATCH_GIT_BASIC_AUTHORIZATION=$$(echo "$$MATCH_REPO_ACCESS_USER:$$MATCH_REPO_ACCESS_TOKEN" | base64) \
	GITHUB_TOKEN=$${GITHUB_TOKEN} \
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