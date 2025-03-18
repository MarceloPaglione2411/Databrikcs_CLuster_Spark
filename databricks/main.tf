resource "azurerm_databricks_workspace" "mod-databricks-workspace" {
  name                = var.databricks_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  sku                 = var.sku

  custom_parameters {
    no_public_ip = true
  }
  


  tags = {
    Environment = "Production"
  }
}

# Configurar o provedor Databricks com a URL do workspace
provider "databricks" {
  host = azurerm_databricks_workspace.dbricks.workspace_url
  
}
