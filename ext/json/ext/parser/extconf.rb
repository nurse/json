require 'mkmf'
require 'rbconfig'

if CONFIG['CC'] =~ /gcc/
  $CFLAGS << ' -Wall -Wextra'
  unless $CFLAGS.gsub!(/ -O[\dsz]?/, ' -O3')
    $CFLAGS << ' -O3'
  end
end

have_header("re.h")
have_header("ruby/st.h")
create_makefile 'json/ext/parser'
