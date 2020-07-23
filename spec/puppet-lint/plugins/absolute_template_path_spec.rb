require 'spec_helper'

describe 'absolute_template_path' do
  let(:msg) { 'template module paths should be relative, not absolute' }

  context 'with fix disabled' do
    context 'when the template has a relative module path' do
      let(:code) do
        <<-TEST_CLASS
          class template_tester {
            file { '/tmp/template':
              content => template('example/template.erb'),
            }
          }
        TEST_CLASS
      end

      it 'detects no problems' do
        expect(problems).to have(0).problems
      end
    end

    context 'when the template has an absolute module path' do
      let(:code) do
        <<-TEST_CLASS
          class template_tester {
            file { '/tmp/template':
              content => template('/etc/puppet/modules/example/template.erb'),
            }
          }
        TEST_CLASS
      end

      it 'detects a single problem' do
        expect(problems).to have(1).problem
      end

      it 'creates a warning' do
        expect(problems).to contain_warning(msg).on_line(3).in_column(26)
      end
    end
  end
end
