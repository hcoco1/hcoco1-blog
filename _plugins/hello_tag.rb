module Jekyll
    class HelloTag < Liquid::Tag
      def render(context)
        "Hello, world!"
      end
    end
  end
  Liquid::Template.register_tag('hello', Jekyll::HelloTag)
  