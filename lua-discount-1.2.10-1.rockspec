-- This file was automatically generated for the LuaDist project.

package="lua-discount"
version="1.2.10-1"
-- LuaDist source
source = {
  tag = "1.2.10-1",
  url = "git://github.com/LuaDist-testing/lua-discount.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/3738/lua-discount-1.2.10.tar.gz",
--    md5 = "fcd0b4343c676813d0a7ab5c2d8812a3"
-- }
description = {
   summary = "Binding to a fast C implementation of the Markdown text-to-html markup system",
   homepage = "http://asbradbury.org/projects/lua-discount/",
   license = "BSD"
}
supported_platforms = {"unix"}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      discount = {
         "docheader.c",
         "dumptree.c",
         "generate.c",
         "markdown.c",
         "mkdio.c",
         "resource.c",
         "ldiscount.c"
      }
   },
   platforms = {
      linux = {
         modules = {
            discount = {
               defines = {"HAVE_FOPENCOOKIE"}
            }
         }
      }
   }
}