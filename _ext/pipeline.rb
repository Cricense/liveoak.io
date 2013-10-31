require 'zurb-foundation'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new '/blog'
  extension Awestruct::Extensions::Paginator.new :posts, '/blog'
  extension Awestruct::Extensions::Indexifier.new
  # Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Atomizer.new :posts, '/blog.atom'
end
