<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.eip_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.vpc_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.ngw_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.ngw_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.public_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public_1a_rtb_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_1b_rtb_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.eks_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | n/a | `string` | n/a | yes |
| <a name="input_subnets_qtt"></a> [subnets\_qtt](#input\_subnets\_qtt) | n/a | `number` | `4` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be added to AWS resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_private_1a"></a> [subnet\_private\_1a](#output\_subnet\_private\_1a) | n/a |
| <a name="output_subnet_private_1b"></a> [subnet\_private\_1b](#output\_subnet\_private\_1b) | n/a |
| <a name="output_subnet_private_ids"></a> [subnet\_private\_ids](#output\_subnet\_private\_ids) | n/a |
| <a name="output_subnet_public_1a"></a> [subnet\_public\_1a](#output\_subnet\_public\_1a) | n/a |
| <a name="output_subnet_public_1b"></a> [subnet\_public\_1b](#output\_subnet\_public\_1b) | n/a |
| <a name="output_subnet_public_ids"></a> [subnet\_public\_ids](#output\_subnet\_public\_ids) | n/a |
<!-- END_TF_DOCS -->