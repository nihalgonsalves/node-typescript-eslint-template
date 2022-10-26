# node-typescript-eslint-template

![build status](https://github.com/nihalgonsalves/node-typescript-eslint-template/workflows/build/badge.svg)
![last commit](https://img.shields.io/github/last-commit/nihalgonsalves/node-typescript-eslint-template)
![license UNLICENSE](https://img.shields.io/github/license/nihalgonsalves/node-typescript-eslint-template?color=brightgreen)

TypeScript template repository with typescript-eslint (airbnb config) and ts-node-dev.

Dependabot keeps the dependencies up to date.

- **Build tool**: yarn (can be replaced with npm: `rm yarn.lock && npm install`)
- **Target Node version**: 18.x (es2023)
- **Structure**: `src/` for TypeScript source files and `build/` for output
- Also includes a default `.editorconfig` with 2-space indents

Scripts:

- `yarn dev` run from source, auto-restarting
- `yarn lint` run eslint
- `yarn lint --fix` run eslint with auto-formatting
- `yarn build` build to JS
- `yarn start` run built JS
- `yarn test` currently does nothing

## additional setup

> ℹ️ This SSH setup is required so that checks can run on dependency PRs. Other pushes by a GitHub Actions token do not trigger workflows.

For the dependency update workflow to work, you must setup a Deploy Key.

- Create an SSH key for the dependency update workflow:
  - To generate a key pair, use `ssh-keygen -t ed25519 -C "actions@github.com"`
  - Copy the public key (starts with `ssh-ed25519 AAAA...`) and add it as a new deploy key (`https://github.com/<your-org>/<your-repo>/settings/keys/new`). Make sure to tick "Allow write access", as the workflow needs to push a new branch with the updates.
  - Copy the private key (starts with `-----BEGIN OPENSSH PRIVATE KEY-----`) and save it as a new secret (`https://github.com/<your-org>/<your-repo>/settings/secrets/actions/new`) called `ACTIONS_DEPLOY_KEY`
  - 🚨 Make sure to delete the keys from your local machine once done

## use with react

```diff
diff --git a/.eslintrc b/.eslintrc
index e755856..bbaeee5 100644
--- a/.eslintrc
+++ b/.eslintrc
@@ -1,3 +1,6 @@
{
-  "extends": ["./node_modules/@nihalgonsalves/esconfig/.eslintrc"]
+  "extends": [
+    "./node_modules/@nihalgonsalves/esconfig/.eslintrc",
+    "./node_modules/@nihalgonsalves/esconfig/.eslintrc.react"
+  ]
}
```
