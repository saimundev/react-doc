import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // Required for Docker to allow external access
    port: 5173, // Default Vite dev server port
  },
});
