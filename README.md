## node-typescript-eslint-template

TypeScript template repository with typescript-eslint (airbnb config) and ts-node-dev

- **Build tool**: yarn (can be replaced with npm: `rm yarn.lock && npm install`)
- **Target Node version**: 12.x (es2019)
- **Structure**: `src/` for TypeScript source files and `build/` for output
- Also includes a default `.editorconfig` with 2-space indents

Scripts:

- `yarn dev` run from source, auto-restarting
- `yarn lint` run eslint
- `yarn lint --fix` run eslint with auto-formatting
- `yarn build` build to JS
- `yarn start` run built JS
- `yarn test` currently does nothing
