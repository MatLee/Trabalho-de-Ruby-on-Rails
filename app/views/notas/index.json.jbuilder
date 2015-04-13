json.array!(@notas) do |nota|
  json.extract! nota, :id, :aluno_id, :disciplina_id, :p1, :p2, :p3
  json.url nota_url(nota, format: :json)
end
