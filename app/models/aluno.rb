class Aluno < ActiveRecord::Base
has_and_belongs_to_many :processos
end
