{{/* Define the configmap */}}
{{- define "keycloak.configmap" -}}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: keycloak-env
data:
  KEYCLOAK_ADMIN: {{ .Values.admin.username | quote }}
  KEYCLOAK_ADMIN_PASSWORD: {{ .Values.admin.password | quote }}

{{- end -}}
