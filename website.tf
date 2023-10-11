provider "aws"{
    region="us-east-1"
    access_key = "AKIA5VD54LM6ZY7XR7U7"
    secret_key = "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"
}
resource "aws_instance" "application"{
    ami="ami-0fa1de1d60de6a97e"
    instance_type="t2.micro"
    subnet_id ="subnet-0e0f9d492e26aa7ba"
    security_groups=["sg-04245a2c5fc6afb19"]
    count     ="1"
    key_name  ="TJ"
    user_data = file("website.sh") 
}
