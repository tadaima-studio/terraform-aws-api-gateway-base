output "rest_api_id" {
  value = aws_api_gateway_rest_api.this.id
}
output "rest_api_root_id" {
  value = aws_api_gateway_rest_api.this.root_resource_id
}
output "execution_arn" {
  value = aws_api_gateway_rest_api.this.execution_arn
}
output "request_parameters_validator_id" {
  value = aws_api_gateway_request_validator.this.id
}

output "key_id" {
  value = aws_api_gateway_api_key.this-key.value
}

output "invoke_url" {
  value = aws_api_gateway_deployment.this.invoke_url
}