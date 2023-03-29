package = "kong-oidc"
version = "1.0.0-1"
source = {
   url = "git+ssh://git@github.com/NumericalTechnologies/kong-oidc.git"
}
description = {
   homepage = "https://github.com/NumericalTechnologies/kong-oidc",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.oidc.filter"] = "kong/plugins/oidc/filter.lua",
      ["kong.plugins.oidc.handler"] = "kong/plugins/oidc/handler.lua",
      ["kong.plugins.oidc.schema"] = "kong/plugins/oidc/schema.lua",
      ["kong.plugins.oidc.session"] = "kong/plugins/oidc/session.lua",
      ["kong.plugins.oidc.utils"] = "kong/plugins/oidc/utils.lua",
      ["test.unit.base_case"] = "test/unit/base_case.lua",
      ["test.unit.mockable_case"] = "test/unit/mockable_case.lua",
      ["test.unit.test_already_auth"] = "test/unit/test_already_auth.lua",
      ["test.unit.test_bearer_jwt_auth"] = "test/unit/test_bearer_jwt_auth.lua",
      ["test.unit.test_filter"] = "test/unit/test_filter.lua",
      ["test.unit.test_filters_advanced"] = "test/unit/test_filters_advanced.lua",
      ["test.unit.test_handler_mocking_openidc"] = "test/unit/test_handler_mocking_openidc.lua",
      ["test.unit.test_header_claims"] = "test/unit/test_header_claims.lua",
      ["test.unit.test_introspect"] = "test/unit/test_introspect.lua",
      ["test.unit.test_utils"] = "test/unit/test_utils.lua",
      ["test.unit.test_utils_bearer_access_token"] = "test/unit/test_utils_bearer_access_token.lua"
   },
   copy_directories = {
      "docs"
   },
   install = {
      bin = {
         "bin/build-env.sh",
         "bin/my-ip.sh",
         "bin/run-unit-tests.sh",
         "bin/teardown-env.sh"
      }
   }
}
