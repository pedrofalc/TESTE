json.array!(@processos) do |processo|
  json.extract! processo, :id, :nome, :inicio, :final
  json.url processo_url(processo, format: :json)
end
