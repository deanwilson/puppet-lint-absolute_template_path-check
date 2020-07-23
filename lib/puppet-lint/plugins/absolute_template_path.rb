PuppetLint.new_check(:absolute_template_path) do
  def check
    resource_indexes.each do |resource|
      next unless resource[:type].value == 'file'

      content_tokens = resource[:param_tokens].select { |pt| pt.value == 'content' }

      content_tokens.each do |content_token|
        value_token = content_token.next_code_token.next_code_token

        next unless value_token.value.start_with? 'template'

        template_path = value_token.next_code_token.next_code_token.value

        next unless template_path.start_with? '/' # skip relative paths

        # if we made it here it's a file resource with a template parameter
        # that begins with an absolute path, so raise a lint issue for it.
        notify :warning, {
          message:     'template module paths should be relative, not absolute',
          line:        value_token.line,
          column:      value_token.column,
          param_token: content_token,
          value_token: value_token,
        }
      end
    end
  end
end
