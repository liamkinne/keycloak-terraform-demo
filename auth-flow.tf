resource "keycloak_authentication_flow" "flow" {
  realm_id = keycloak_realm.realm.id
  alias    = "my-flow-alias"
}

resource "keycloak_authentication_execution" "execution" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "identity-provider-redirector"
}

resource "keycloak_authentication_execution_config" "config" {
  realm_id     = keycloak_realm.realm.id
  execution_id = keycloak_authentication_execution.execution.id
  alias        = "my-config-alias"
  config = {
    defaultProvider = "my-config-default-idp"
  }
}
