import tseslint from "typescript-eslint";

import sharedConfig from "@nihalgonsalves/esconfig/eslint.config.shared.js";

export default tseslint.config(
  { ignores: ["eslint.config.js", "build/**/*"] },
  ...sharedConfig,
);
