resource "newrelic_one_dashboard_json" "run_dashboard_json" {
   json = file("run_dashboard.json")
}
resource "newrelic_one_dashboard_json" "pubsub_dashboard_json" {
   json = file("pubsub_dashboard.json")
}
resource "newrelic_one_dashboard_json" "function_dashboard_json" {
   json = file("function_dashboard.json")
}

# resource "newrelic_one_dashboard" "hello_run_dashboard" {
#   name        = var.dash_name
#   permissions = "public_read_only"

#   page {
#     name = var.dash_name

#     widget_billboard {
#       title   = "Requests per minute"
#       row     = 1
#       column  = 1
#       width   = 6
#       height  = 3
#       nrql_query {
#         query = "SELECT average(container.BillableInstanceTime) AS 'Billable Time', average(container.cpu.AllocationTime) AS 'CPU Allocation Time', average(container.memory.AllocationTime) AS 'Memory Allocation Time', sum(RequestLatencies) AS 'Total Request Latency' FROM GcpRunRevisionSample WHERE name = 'hello' SINCE 1 hour ago
# "
#       }
#     }

#     widget_bar {
#       title   = "Average transaction duration, by application"
#       row     = 1
#       column  = 7
#       width   = 6
#       height  = 3
#       nrql_query {
# #        account_id = 12345
#         query      = "FROM Transaction SELECT average(duration) FACET appName"
#       }
#     }

#     # Add more widgets as needed
#     # ...

#     widget_markdown {
#       title  = "Dashboard Note"
#       row    = 7
#       column = 1
#       width  = 12
#       height = 3
#       text   = "### Helpful Links\n\n* New Relic One\n* Developer Portal"
#     }
#   }
# }
