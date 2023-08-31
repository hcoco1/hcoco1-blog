module Jekyll
    class CodeSandboxTag < Liquid::Tag
  
      def initialize(tag_name, content, tokens)
        super
        @content = content.strip
      end
  
      def render(context)
        # Here, you can customize the iframe HTML to suit your needs.
        %(<iframe src="https://codesandbox.io/embed/#{@content}" style="width:100%; height:500px; border:0; border-radius: 4px; overflow:hidden;" title="CodeSandbox" allow="geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb" sandbox="allow-modals allow-forms allow-popups allow-scripts allow-same-origin"></iframe>)
      end
    end
  end
  
  Liquid::Template.register_tag('codesandbox', Jekyll::CodeSandboxTag)
  