# frozen_string_literal: true

require 'active_record_shards/connection_pool'
require 'active_record_shards/connection_handler'
require 'active_record_shards/connection_specification'

ActiveRecordShards::ConnectionSpecification = ActiveRecord::ConnectionAdapters::ConnectionSpecification
methods_to_override = [:establish_connection, :remove_connection, :pool_for, :pool_from_any_process_for]
ActiveRecordShards.override_connection_handler_methods(methods_to_override)
