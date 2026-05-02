# API Gateway Outputs
output "api_gateway_id" {
  description = "ID of the API Gateway"
  value       = aws_api_gateway_rest_api.advanced_deployment_api.id
}

output "api_gateway_name" {
  description = "Name of the API Gateway"
  value       = aws_api_gateway_rest_api.advanced_deployment_api.name
}

output "api_gateway_arn" {
  description = "ARN of the API Gateway"
  value       = aws_api_gateway_rest_api.advanced_deployment_api.arn
}

output "api_gateway_execution_arn" {
  description = "Execution ARN of the API Gateway"
  value       = aws_api_gateway_rest_api.advanced_deployment_api.execution_arn
}

# Production Stage Outputs
output "production_stage_url" {
  description = "URL of the production stage"
  value       = "https://${aws_api_gateway_rest_api.advanced_deployment_api.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${aws_api_gateway_stage.production_stage.stage_name}"
}

output "production_stage_name" {
  description = "Name of the production stage"
  value       = aws_api_gateway_stage.production_stage.stage_name
}

output "production_stage_arn" {
  description = "ARN of the production stage"
  value       = aws_api_gateway_stage.production_stage.arn
}

# Staging Stage Outputs
output "staging_stage_url" {
  description = "URL of the staging stage"
  value       = "https://${aws_api_gateway_rest_api.advanced_deployment_api.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${aws_api_gateway_stage.staging_stage.stage_name}"
}

output "staging_stage_name" {
  description = "Name of the staging stage"
  value       = aws_api_gateway_stage.staging_stage.stage_name
}

output "staging_stage_arn" {
  description = "ARN of the staging stage"
  value       = aws_api_gateway_stage.staging_stage.arn
}

# API Endpoints
output "production_hello_endpoint" {
  description = "Production Hello API endpoint"
  value       = "https://${aws_api_gateway_rest_api.advanced_deployment_api.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${aws_api_gateway_stage.production_stage.stage_name}/hello"
}

output "staging_hello_endpoint" {
  description = "Staging Hello API endpoint"
  value       = "https://${aws_api_gateway_rest_api.advanced_deployment_api.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${aws_api_gateway_stage.staging_stage.stage_name}/hello"
}

# Lambda Function Outputs
output "blue_lambda_function_name" {
  description = "Name of the Blue Lambda function"
  value       = aws_lambda_function.blue_function.function_name
}

output "blue_lambda_function_arn" {
  description = "ARN of the Blue Lambda function"
  value       = aws_lambda_function.blue_function.arn
}

output "blue_lambda_function_invoke_arn" {
  description = "Invoke ARN of the Blue Lambda function"
  value       = aws_lambda_function.blue_function.invoke_arn
}

output "green_lambda_function_name" {
  description = "Name of the Green Lambda function"
  value       = aws_lambda_function.green_function.function_name
}

output "green_lambda_function_arn" {
  description = "ARN of the Green Lambda function"
  value       = aws_lambda_function.green_function.arn
}

output "green_lambda_function_invoke_arn" {
  description = "Invoke ARN of the Green Lambda function"
  value       = aws_lambda_function.green_function.invoke_arn
}

# IAM Role Outputs
output "lambda_execution_role_arn" {
  description = "ARN of the Lambda execution role"
  value       = aws_iam_role.lambda_execution_role.arn
}

output "lambda_execution_role_name" {
  description = "Name of the Lambda execution role"
  value       = aws_iam_role.lambda_execution_role.name
}

# CloudWatch Alarms Outputs
output "api_4xx_errors_alarm_name" {
  description = "Name of the API Gateway 4XX errors alarm"
  value       = aws_cloudwatch_metric_alarm.api_4xx_errors.alarm_name
}

output "api_5xx_errors_alarm_name" {
  description = "Name of the API Gateway 5XX errors alarm"
  value       = aws_cloudwatch_metric_alarm.api_5xx_errors.alarm_name
}

output "api_high_latency_alarm_name" {
  description = "Name of the API Gateway high latency alarm"
  value       = aws_cloudwatch_metric_alarm.api_high_latency.alarm_name
}

output "blue_lambda_errors_alarm_name" {
  description = "Name of the Blue Lambda function errors alarm"
  value       = aws_cloudwatch_metric_alarm.blue_lambda_errors.alarm_name
}

output "green_lambda_errors_alarm_name" {
  description = "Name of the Green Lambda function errors alarm"
  value       = aws_cloudwatch_metric_alarm.green_lambda_errors.alarm_name
}

