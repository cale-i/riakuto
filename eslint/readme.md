# Setup
npx create-react-app eslint --template=typescript

npm install -g typescript ts-node

## ESLint
yarn upgrade-interactive --latest
yarn upgrade typescript@latest

yarn eslint --init
✔ How would you like to use ESLint? · style
>> To check syntax, find problems, and enforce code style
✔ What type of modules does your project use? · esm
>> JavaScript modules (import/export)
✔ Which framework does your project use? · react
>> React
✔ Does your project use TypeScript? · No / Yes
>> Yes
✔ Where does your code run? · browser
>> Browser
✔ How would you like to define a style for your project? · guide
>> Use a popular style guide
✔ Which style guide do you want to follow? · airbnb
>> Airbnb: https://github.com/airbnb/javascript
✔ What format do you want your config file to be in? · JavaScript
>> JavaScript
✔ Would you like to install them now with npm? · No / Yes
>> No

yarn add -D eslint-plugin-react @typescript-eslint/eslint-plugin \
    eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y \
    eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser

<!-- yarn add -D typesync -->
typesync
yarn

<!-- VSCode settings -->
<!-- settins.json -->
// TypeScript Settings
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
},
"editor.formatOnSaveMode": false,
"eslint.packageManager": "yarn",
"typescript.enablePromptUseWorkspaceTsdk": true,
// TypeScript Settings end

<!-- prettier settings -->
yarn add -D prettier eslint-config-prettier

<!-- ESLintの設定とprettierの設定のコンフリクトをチェック -->
npx eslint-config-prettier 'src/**/*.{js,jsx,ts,tsx}'

<!-- stylelint -->
yarn add -D stylelint \
    stylelint-config-standard \
    stylelint-order \
    stylelint-config-recess-order
(typesync)
yarn

touch .stylelintrc.js

<!-- 関数定義をアロー関数式に統一 -->
yarn -D add eslint-plugin-prefer-arrow

<!-- run formatter -->
yarn fix

<!-- simple-git-hooks, lint-staged -->
yarn add -D simple-git-hooks lint-staged
npx simple-git-hooks
