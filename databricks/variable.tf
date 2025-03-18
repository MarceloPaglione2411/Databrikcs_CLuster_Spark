variable "rg_name" {
    description = "Nome Resource Group (DATABRIKS)"
    type = string
}

variable "rg_location" {
    description = "Localização RG"
    type = string
}

variable "databricks_name" {
    description = "NOme Databricks Workspace"
    type = string
}

variable "sku" {
    description = "SKU  Tier Databricks Workspace"
    type = string
}
