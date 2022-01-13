package xyz.husniportofolio

import org.apache.flink.api.common.state.{ValueState, ValueStateDescriptor}
import org.apache.flink.api.common.typeinfo.Types
import org.apache.flink.configuration.Configuration
import org.apache.flink.streaming.api.functions.KeyedProcessFunction
import org.apache.flink.util.Collector

import xyz.husniportofolio.model.ServerLog

class FraudDetection extends KeyedProcessFunction[String, String, String]{

}