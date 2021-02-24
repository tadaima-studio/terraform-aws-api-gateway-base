# terraform-aws-api-gateway-base
This module provision a base for an api-gateweay solution on AWS.

## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Modules

No Modules.

## Resources

| Name                                                                                                                                                 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| [aws_api_gateway_api_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key)                           |
| [aws_api_gateway_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment)                     |
| [aws_api_gateway_integration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration)                   |
| [aws_api_gateway_integration_response](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration_response) |
| [aws_api_gateway_method](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method)                             |
| [aws_api_gateway_method_response](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response)           |
| [aws_api_gateway_request_validator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_request_validator)       |
| [aws_api_gateway_resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource)                         |
| [aws_api_gateway_rest_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api)                         |
| [aws_api_gateway_usage_plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan)                     |
| [aws_api_gateway_usage_plan_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key)             |
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)                                |

## Inputs

| Name            | Description | Type     | Default | Required |
| --------------- | ----------- | -------- | ------- |:--------:|
| description     | n/a         | `string` | `""`    | no       |
| key\_name       | n/a         | `string` | n/a     | yes      |
| lambda\_version | n/a         | `string` | n/a     | yes      |
| name            | n/a         | `string` | n/a     | yes      |
| policy          | n/a         | `string` | n/a     | yes      |

## Outputs

| Name                               | Description |
| ---------------------------------- | ----------- |
| execution\_arn                     | n/a         |
| invoke\_url                        | n/a         |
| key\_id                            | n/a         |
| request\_parameters\_validator\_id | n/a         |
| rest\_api\_id                      | n/a         |
| rest\_api\_root\_id                | n/a         |
