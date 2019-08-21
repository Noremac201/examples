## Requirements
* Terraform
* [google-beta provider](https://www.terraform.io/docs/providers/google/provider_versions.html#using-the-google-beta-provider) (should come preinstalled)
* Change name of `project` in `main.tf`

To run this:

```
git clone https://github.com/Noremac201/examples
cd examples/
terraform init composerTerraform/
# Check if this is what is wanted
terraform plan composerTerraform/
# Apply the planned changes
terraform apply composerTerraform/
```
