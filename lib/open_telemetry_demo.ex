defmodule OpenTelemetryDemo do
  @moduledoc """
  Documentation for `OpenTelemetryDemo`.
  """
  require OpenTelemetry.Tracer
  require OpenTelemetry.Span

  @doc """
  random function just to show the open-telemetry demo,
  this function will mimic some working of the modules.
  """
  def hello() do
    # we can pass the span name into the below function
    start_new_span("span-name-hello")

    # add delay in the
    add_delay(200)

    # finish the span
    end_span()
  end

  # Private functions
  defp add_delay(delay) do
    Process.sleep(delay)
  end

  defp start_new_span(span_name) do
    OpenTelemetry.Tracer.start_span(span_name)
  end

  defp end_span() do
    OpenTelemetry.Tracer.end_span()
  end
end
