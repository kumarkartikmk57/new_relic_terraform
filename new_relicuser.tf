# resource "google_service_account" "service_account" {
#   account_id   = var.new_relic_service_account
#   display_name = "New relic Service Account"
# #  email = var.new_relic_service_account
# }
# resource "google_project_iam_binding" "service_user" {
#   project = var.project
#   role = "roles/serviceusage.serviceUsageConsumer"
#   members = ["serviceAccount:${var.new_relic_service_account}"]
# }
# resource "google_project_iam_binding" "service_user" {
#   project = var.project
#   role = "roles/viewer"
#   members = ["serviceAccount:${var.new_relic_service_account}"]
# }

resource "google_project_iam_member" "member" {
  project = var.project
  role    = "roles/viewer"
  member  = "serviceAccount:${var.new_relic_service_account}"
}
resource "google_project_iam_member" "user_member" {
  project = var.project
  role    = "roles/serviceusage.serviceUsageConsumer"
  member  = "serviceAccount:${var.new_relic_service_account}"
}