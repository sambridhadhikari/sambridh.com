{{- define "imagePullSecret" }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\", \"password\":\"%s\", \"auth\": \"%s\"}}}" .Values.registry .Values.username .Values.password (printf "%s:%s" .Values.username .Values.password | b64enc) | b64enc }}
{{- end }}