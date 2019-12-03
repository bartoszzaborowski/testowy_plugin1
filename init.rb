Redmine::Plugin.register :testowy_plugin1 do
  name 'Testowy Plugin1 plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  #url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  permission :testowy_plugin1, { :testowy_plugin1 => [:index] }, :public => true
  menu :project_menu, :testowy_plugin1, { :controller => 'testowy_plugin1', :action => 'index' }, :caption => 'Testowy', :after => :activity, :param => :project_id
end
