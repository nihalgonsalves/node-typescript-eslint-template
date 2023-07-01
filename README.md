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
