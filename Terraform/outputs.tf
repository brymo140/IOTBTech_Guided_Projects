output "control_node_public_ip" {
  description = "Public IP of the control node"
  value       = aws_instance.control_node.public_ip
}

output "managed_node_public_ip" {
  description = "Public IP of the managed node which is for reference only because SSH access is blocked except from the control node"
  value       = aws_instance.managed_node.public_ip
}

output "managed_node_private_ip" {
  description = "Private IP of the managed node which is used by the control node to SSH into it"
  value       = aws_instance.managed_node.private_ip
}