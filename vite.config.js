import { defineConfig } from 'vite'

export default defineConfig({
  root: '.',
  publicDir: 'public',
  build: {
    outDir: 'dist',
    assetsDir: 'assets'
  },
  server: {
    port: 3000,
    host: '0.0.0.0',
    open: true,
    cors: true,
    allowedHosts: ['cloudserver', '.cloudserver', 'localhost', '127.0.0.1']
  },
  plugins: []
})