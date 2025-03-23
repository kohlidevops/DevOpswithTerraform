resource "aws_key_pair" "vprofilekey" {
  key_name   = "vprofilekey"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKxCWaKqmTAqymgDCuJccB6vjhejlhJamm/zCdOx+OV6 root@ip-172-31-12-65"
}
