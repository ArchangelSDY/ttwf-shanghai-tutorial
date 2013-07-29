#!/usr/bin/env python
# -*- code: utf-8 -*-
import argparse
import houdini
from jinja2 import Template
import misaka
from pygments import highlight
from pygments.lexers import get_lexer_by_name
from pygments.formatters import HtmlFormatter


class BleepRenderer(misaka.HtmlRenderer, misaka.SmartyPants):
    def block_code(self, text, lang):
        if not lang:
            return '\n<pre><code>%s</code></pre>\n' % \
                    houdini.escape_html(text.strip())
        lexer = get_lexer_by_name(lang, stripall=True)
        formatter = HtmlFormatter()
        return highlight(text, lexer, formatter)


def main():
    parser = argparse.ArgumentParser(description='Mark reveal builder')
    parser.add_argument('slides', nargs='+')
    parser.add_argument('--tpl', default='tpl/index.tpl.html')

    args = parser.parse_args()

    context = {
        'slides': [],
        'highlight_css': HtmlFormatter(style='monokai').get_style_defs('.highlight'),
    }

    renderer = BleepRenderer()
    md = misaka.Markdown(renderer,
            extensions=misaka.EXT_FENCED_CODE | misaka.EXT_NO_INTRA_EMPHASIS)

    for slide_name in args.slides:
        with open(slide_name, 'rb') as slide_file:
            md_content = slide_file.read().decode('utf-8')
            html_content = md.render(md_content)
            context['slides'].append(html_content)

    with open('tutorial/index.html', 'wb') as output_file:
        with open(args.tpl, 'rb') as template_file:
            tpl = Template(template_file.read().decode('utf-8'), lstrip_blocks=True)
            rendered_content = tpl.render(context)
            output_file.write(rendered_content.encode('utf-8'))


if __name__ == '__main__':
    main()
