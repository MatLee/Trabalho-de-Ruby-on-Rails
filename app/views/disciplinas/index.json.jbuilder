json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :nome, :periodo
  json.url disciplina_url(disciplina, format: :json)
end
