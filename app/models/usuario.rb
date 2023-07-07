class Usuario < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text,
    against: {
    descripcion: 'A',
    usuario: 'B',
    }
  
end
