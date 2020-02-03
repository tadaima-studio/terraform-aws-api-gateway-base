# Definition of API GW STUFF #

data "aws_caller_identity" "current" {}

resource "aws_api_gateway_rest_api" "this" {
  name        = var.name 
  description = var.description

  endpoint_configuration {
    types = ["PRIVATE"]
  }

  policy = var.policy 
}

resource "aws_api_gateway_request_validator" "this" {
  name                        = "Request Parameters Validator"
  rest_api_id                 = aws_api_gateway_rest_api.this.id
  validate_request_body       = false
  validate_request_parameters = true
}


resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  stage_name  = var.lambda_version
}

resource "aws_api_gateway_usage_plan" "this" {
  name = var.name

  api_stages {
    api_id = aws_api_gateway_rest_api.this.id
    stage  = aws_api_gateway_deployment.this.stage_name
  }
}

resource "aws_api_gateway_api_key" "this-key" {
  name = var.key_name
}

resource "aws_api_gateway_usage_plan_key" "main" {
  key_id        = aws_api_gateway_api_key.this-key.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.this.id
}
