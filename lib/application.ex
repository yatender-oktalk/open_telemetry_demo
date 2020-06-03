defmodule OpenTelemetryDemo.Application do
  use Application

  def start(_type, _args) do
    _ = OpenTelemetry.register_application_tracer(:open_telemetry_demo)

    children = []

    opts = [strategy: :one_for_one, name: OpenTelemetryDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
