{{/*
Expand the name of the chart.
*/}}
{{- define "discourse.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "discourse.fullname" -}}
{{- $name := default "discourse" .Values.nameOverride -}}
{{- if ne .Chart.Name .Release.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "discourse.web.fullname" -}}
{{- $name := default .Chart.Name .Values.web.service.nameOverride -}}
{{- if .Values.web.service.nameOverride }}
{{- printf "%s" .Values.web.service.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}

{{- define "discourse.admin.fullname" -}}
{{- $name := default .Chart.Name .Values.admin.service.nameOverride -}}
{{- if .Values.admin.service.nameOverride }}
{{- printf "%s" .Values.admin.service.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified postgresql name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "discourse.postgresql.fullname" -}}
{{- $name := default "postgresql" .Values.provisionDataStore.postgresql.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "discourse.redis.fullname" -}}
{{- $name := default "redis" .Values.provisionDataStore.redis.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Secret name
*/}}
{{- define "discourse.secretname" -}}
{{- $name := default "discourse" .Values.secretNameOverride -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}