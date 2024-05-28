import { prepare, maps } from "binary2npm";

maps.arch = {
  x86: undefined,
  x64: "x64",
  arm64: "arm64",
};
maps.vendor = {};
maps.os.win32 = "win32";

await prepare({
  remote: "github",
  author: "biomejs",
  repository: "biome",
  remoteToken: process.env.GITHUB_TOKEN,
  binary: "biome",
  orders: ["binary", "os", "arch"],
  stableOnly: true
});
