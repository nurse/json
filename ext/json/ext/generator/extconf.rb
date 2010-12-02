require 'mkmf'
require 'rbconfig'

if CONFIG['CC'] =~ /gcc/
  $CFLAGS << ' -Wall -Wextra'
  unless $CFLAGS.gsub!(/ -O[\dsz]?/, ' -O3')
    $CFLAGS << ' -O3'
  end
end

have_header("re.h")
if RUBY_VERSION >= "1.9"
  have_header("ruby/encoding.h")
end
create_makefile 'json/ext/generator'
