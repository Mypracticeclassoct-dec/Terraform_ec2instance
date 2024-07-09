data "aws_ami" "machine"{
    most_recent = true
    filter{
        name = "name"
        values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*" ]
    }
    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }
    owners = [ "099720109477" ]
}
output "machineid" {
    value = data.aws_ami.machine.id  
}