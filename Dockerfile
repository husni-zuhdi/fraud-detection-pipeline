FROM maven:3.6-jdk-8-slim AS builder
COPY ./ /opt/fraud-detection
WORKDIR /opt/fraud-detection
RUN mvn clean install

FROM flink:1.11.0-scala_2.11
WORKDIR /opt/flink/bin
COPY --from=builder /opt/fraud-detection/target/fraud-detection-*.jar /opt/fraud-detection.jar