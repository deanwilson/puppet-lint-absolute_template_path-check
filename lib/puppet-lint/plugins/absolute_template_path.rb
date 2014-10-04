PuppetLint.new_check(:absolute_template_path) do
  def check
    resource_indexes.each do |resource|
      if resource[:type].value == "file"
        resource[:param_tokens].select { |param_token|
          param_token.value == 'content'
        }.each do |content_token|

          value_token = content_token.next_code_token.next_code_token

          if value_token.value.start_with? 'template'
            template_path = value_token.next_code_token.next_code_token.value

            if template_path.start_with? '/'

              notify :warning, {
                :message     => 'template module paths should be relative, not absolute',
                :line        => value_token.line,
                :column      => value_token.column,
                :param_token => content_token,
                :value_token => value_token,
              }
            end
          end
        end
      end
    end
  end
end
