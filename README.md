During reconnaissance (recon) it is often helpful to get a quick overview of all the relative endpoints in a file. These days web applications have frontend pipelines that make it harder for humans to understand minified code. This tool contains a nifty regular expression to find and extract the relative URLs in such files. This can help surface new targets for security researchers to look at. It can also be used to periodically compare the results of the same file, to see which new endpoints have been deployed. History has shown that this is a goldmine for bug bounty hunters.

# Usage
The tool has three ways to be executed: with a file name, a URL, or a command. The options are outlined below.

 - `ruby extract.rb demo-file.js`
 - `ruby extract.rb https://hackerone.com/some-file.js`
 - `ruby extract.rb '|cat demo-file.js'`
