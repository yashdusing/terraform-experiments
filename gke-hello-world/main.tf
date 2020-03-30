provider "google" {
  credentials = file("service-credentials.json")
  project = "yashdusing-k8s-test"
  region  = "us-west1"
  zone    = "us-west1-a"
}

resource "google_container_cluster" "gke-cluster" {
  name               = "tf-gke-cluster"
  network            = "default"
  location           = "us-west1-a"
  initial_node_count = 3

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.gke-cluster.name} --zone  ${google_container_cluster.gke-cluster.location} --project yashdusing-k8s-test"
  }
}
