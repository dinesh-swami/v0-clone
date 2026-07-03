import { Template, defaultBuildLogger } from "e2b";
import { template as nextJSTemplate } from "./template";
import dotenv from "dotenv";
dotenv.config();

Template.build(nextJSTemplate, "c0-build", {
  cpuCount: 4,
  memoryMB: 4096,
  onBuildLogs: defaultBuildLogger(),
  apiKey: "e2b_fbdbf98616ca315c13dc30749e236689b9609ae5",
});
