resource "local_file" "example_file1" {
  filename = "${path.module}/output/file1.txt"
  content  = "This is file 1"
}

resource "local_file" "example_file2" {
  filename = "${path.module}/output/file2.txt"
  content  = "This is file 2"
}

resource "null_resource" "create_dir1" {
  provisioner "local-exec" {
    command = "mkdir -p ${path.module}/output/dir1"
  }
}

resource "null_resource" "create_dir2" {
  provisioner "local-exec" {
    command = "mkdir -p ${path.module}/output/dir2"
  }
}

