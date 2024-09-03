const path = require("path");
require("dotenv").config();
const { merge } = require("webpack-merge");
const common = require("./webpack.common.js");

const sdkEnv = process.env.sdkEnv ?? "local";
const backEndUrl = process.env.ENV_BACKEND_URL || 'http://localhost:8080';

const endpointMap = {
  prod: backEndUrl+"/payments",
  sandbox: backEndUrl+"/payments",
  integ: backEndUrl+"/api/payments",
  local: backEndUrl+"/payments", // Default or local environment endpoint
};

const backendEndPoint = endpointMap[sdkEnv] || endpointMap.local;
console.log(backendEndPoint);
console.log(sdkEnv);
// console.log(backendEndPoint);

const devServer = {
  static: {
    directory: path.join(__dirname, "dist"),
  },
  hot: true,
  host: "0.0.0.0",
  port: 9050,
  historyApiFallback: true,
  proxy: [
    {
      context: ["/payments"],
      target: backendEndPoint,
      changeOrigin: true,
      secure: true,
      pathRewrite: { "^/payments": "" },
    },
    // Uncomment the following if needed for 3DS method proxying
    // {
    //   context: ["/3dsmethod"],
    //   target: "https://acs40.sandbox.3dsecure.io",
    //   changeOrigin: true,
    //   secure: false,
    // },
  ],
  headers: {
    "Cache-Control": "must-revalidate",
  },
};

module.exports = merge(common(), {
  mode: "development",
  devServer,
});
