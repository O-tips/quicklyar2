// next.config.mjs
const nextConfig = {
  basePath: process.env.NODE_ENV === 'production' ? '/quicklyAR' : '',
  assetPrefix: process.env.NODE_ENV === 'production' ? '/quicklyAR/' : '',
  output: 'export',
  distDir: 'docs'
};

export default nextConfig;
