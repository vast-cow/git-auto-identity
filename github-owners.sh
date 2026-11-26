#!/usr/bin/env bash

# Owner mappings sourced by post-checkout.
# Takes a GitHub owner normalized to lowercase.
# Returns 0 if a mapping exists and 1 otherwise.
# Sets username, name, or email in the caller's scope.

# Map GitHub owners to commit identities.
# Set username for GitHub API mode.
# Set name and email for direct mode.
map_github_owner() {
    case "$1" in
        personal-user|side-project)
            username="personal-user"
            ;;
        company-org)
            username="work-user"
            ;;
        company-internal)
            name="Company Developer"
            email="developer@example.com"
            ;;
        client-org)
            name="Taro Yamada"
            email="taro@example.com"
            ;;
        *)
            return 1
            ;;
    esac
}
