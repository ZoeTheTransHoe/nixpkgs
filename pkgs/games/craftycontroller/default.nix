{
  python3,
  jdk8,
  jre8,
  lib,
  fetchFromGitlab,
  buildPythonPackage,
  python3Packages,

  # build-system
  setuptools,
  setuptools-scm,

  # dependencies
  setuptools,

  #Python3 packages
  pyyaml,
  pillow,
  apscheduler,
  argon2-cffi,
  cached_property,
  colorama,
  croniter,
  cryptography,
  libgravatar,
  nh3,
  packaging,
  peewee,
  psutil,
  pyjwt,
  requests,
  termcolor,
  tornado,
  tzlocal,
  jsonschema,
  orjson,
  prometheus-client,
  pyotp,

  # tests
  hypothesis,
}:

python3Packages.buildPythonApplication rec {
  pname = "craftycontroller";
  version = "4.4.11";
  pyproject = true;

  src = fetchFromGitlab {
    domain = "gitlab.com";
    owner = "crafty-controller";
    repo = "Crafty 4";
    rev = "a44f5ea9a9566a608cbbc8753f6ac35f5cc5b063";
    hash = "sha256-0f9c494063b2a1ca13e724da48c025dd127fa4d55942606ec74a2dbf17144a04";
  };
  strictDeps = true;

  dependencies = with python3Packages; [
    pyyaml,
    pillow,
    apscheduler,
    argon2-cffi,
    cached_property,
    colorama,
    croniter,
    cryptography,
    libgravatar,
    nh3,
    packaging,
    peewee,
    psutil,
    pyjwt,
    requests,
    termcolor,
    tornado,
    tzlocal,
    jsonschema,
    orjson,
    prometheus-client,
    pyotp,
  ];

  postPatch = {

  };

  meta = {
    changelog = "https://gitlab.com/crafty-controller/crafty-4/~/releases/v${version}";
    description = "Web GUI for managing Minecraft Servers";
    homepage = "https://gitlab.com/crafty-controller/crafty-4";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers [ ZoeyAhmed ];
  };
};


