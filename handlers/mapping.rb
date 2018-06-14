$stats_to_prometheus = {
  "uptime" => {
    "type" => "counter",
    "name" => "uptime_seconds_total"
  },
  "generation" => {
    "type" => "gauge",
    "name" => "generation"
  },
  "connections" => {
    "type" => "gauge",
    "name" => "connections"
  },
  "max-connections" => {
    "type" => "gauge",
    "name" => "connections_max"
  },
  "listeners" => {
    "type" => "gauge",
    "name" => "listeners"
  },
  "worker-threads" => {
    "type" => "gauge",
    "name" => "worker_threads"
  },
  "num-sessions" => {
    "type" => "counter",
    "name" => "num_sessions_total"
  },
  "status-errors.400" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "400"
    }
  },
  "status-errors.403" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "403"
    }
  },
  "status-errors.404" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "404"
    }
  },
  "status-errors.405" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "405"
    }
  },
  "status-errors.416" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "416"
    }
  },
  "status-errors.417" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "417"
    }
  },
  "status-errors.500" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "500"
    }
  },
  "status-errors.502" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "502"
    }
  },
  "status-errors.503" => {
    "type" => "counter",
    "name" => "http_error_total",
    "labels" => {
      "code" => "503"
    }
  },
  "http2-errors.protocol" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "protocol"
    }
  },
  "http2-errors.internal" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "internal"
    }
  },
  "http2-errors.flow-control" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "flow_control"
    }
  },
  "http2-errors.settings-timeout" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "settings_timeout"
    }
  },
  "http2-errors.stream-closed" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "stream_closed"
    }
  },
  "http2-errors.frame-size" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "frame_size"
    }
  },
  "http2-errors.refused-stream" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "refused_stream"
    }
  },
  "http2-errors.cancel" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "cancel"
    }
  },
  "http2-errors.compression" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "compression"
    }
  },
  "http2-errors.connect" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "connect"
    }
  },
  "http2-errors.enhance-your-calm" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "enhance_your_calm"
    }
  },
  "http2-errors.inadequate-security" => {
    "type" => "counter",
    "name" => "http2_errors_total",
    "labels" => {
      "error" => "inadequate_security"
    }
  },
  "http2.read-closed" => {
    "type" => "counter",
    "name" => "http2_closed_connection_total",
    "labels" => {
      "reason" => "read_closed"
    }
  },
  "http2.write-closed" => {
    "type" => "counter",
    "name" => "http2_closed_connection_total",
    "labels" => {
      "reason" => "write_closed"
    }
  },
  "connect-time-0" => {
    "type" => "summary",
    "name" => "connect_time_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "connect-time-25" => {
    "type" => "summary",
    "name" => "connect_time_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "connect-time-50" => {
    "type" => "summary",
    "name" => "connect_time_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "connect-time-75" => {
    "type" => "summary",
    "name" => "connect_time_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "connect-time-99" => {
    "type" => "summary",
    "name" => "connect_time_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "header-time-0" => {
    "type" => "summary",
    "name" => "header_time_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "header-time-25" => {
    "type" => "summary",
    "name" => "header_time_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "header-time-50" => {
    "type" => "summary",
    "name" => "header_time_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "header-time-75" => {
    "type" => "summary",
    "name" => "header_time_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "header-time-99" => {
    "type" => "summary",
    "name" => "header_time_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "body-time-0" => {
    "type" => "summary",
    "name" => "body_time_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "body-time-25" => {
    "type" => "summary",
    "name" => "body_time_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "body-time-50" => {
    "type" => "summary",
    "name" => "body_time_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "body-time-75" => {
    "type" => "summary",
    "name" => "body_time_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "body-time-99" => {
    "type" => "summary",
    "name" => "body_time_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "request-total-time-0" => {
    "type" => "summary",
    "name" => "request_time_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "request-total-time-25" => {
    "type" => "summary",
    "name" => "request_time_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "request-total-time-50" => {
    "type" => "summary",
    "name" => "request_time_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "request-total-time-75" => {
    "type" => "summary",
    "name" => "request_time_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "request-total-time-99" => {
    "type" => "summary",
    "name" => "request_time_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "process-time-0" => {
    "type" => "summary",
    "name" => "process_time_bucket_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "process-time-25" => {
    "type" => "summary",
    "name" => "process_time_bucket_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "process-time-50" => {
    "type" => "summary",
    "name" => "process_time_bucket_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "process-time-75" => {
    "type" => "summary",
    "name" => "process_time_bucke_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "process-time-99" => {
    "type" => "summary",
    "name" => "process_time_bucket_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "response-time-0" => {
    "type" => "summary",
    "name" => "response_time_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "response-time-25" => {
    "type" => "summary",
    "name" => "response_time_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "response-time-50" => {
    "type" => "summary",
    "name" => "response_time_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "response-time-75" => {
    "type" => "summary",
    "name" => "response_time_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "response-time-99" => {
    "type" => "summary",
    "name" => "response_time_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  },
  "duration-0" => {
    "type" => "summary",
    "name" => "request_duration_ms",
    "labels" => {
      "quantile" => "0"
    }
  },
  "duration-25" => {
    "type" => "summary",
    "name" => "request_duration_ms",
    "labels" => {
      "quantile" => "0.25"
    }
  },
  "duration-50" => {
    "type" => "summary",
    "name" => "request_duration_ms",
    "labels" => {
      "quantile" => "0.50"
    }
  },
  "duration-75" => {
    "type" => "summary",
    "name" => "request_duration_ms",
    "labels" => {
      "quantile" => "0.75"
    }
  },
  "duration-99" => {
    "type" => "summary",
    "name" => "request_duration_ms",
    "labels" => {
      "quantile" => "0.99"
    }
  }
}
