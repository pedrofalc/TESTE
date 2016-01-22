json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :telefone, :matricula, :email
  json.url aluno_url(aluno, format: :json)
end
