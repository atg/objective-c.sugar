#!/usr/bin/ruby

require 'stringio'

providers = StringIO.new
libraries = StringIO.new

providers.write "<?xml version='1.0' encoding='UTF-8'?>
<codesense>

<!-- Generated Automatically -->\n\n"

libraries.write "<?xml version='1.0' encoding='UTF-8'?>
<codesense version='1.0'>

<!-- Generated Automatically -->\n\n"

frameworkPaths = ARGV
frameworkPaths.each { |path| index(path) }

providers.write "\n\n</codesense>"
libraries.write "\n\n</codesense>"

IDENTR = "[a-zA-Z$_][a-zA-Z0-9$_]*"
PROTOLIST = '<\s*'+IDENTR+'(\s*,\s*'+IDENTR+')*\s*>'
INTERFACE_REGEX = Regexp.new('@interface\s+'+IDENTR+'(\s*:\s*'+IDENTR+'(\s*'+PROTOLIST+')?)?(?P<interface>.+)@end')

def index(fw)
	if (fw.length == 0)
		return
	end
	
end

def indexFile(contents)
	
	
	
end