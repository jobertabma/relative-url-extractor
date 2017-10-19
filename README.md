During reconnaissance (recon) it is often helpful to get a quick overview of all the relative endpoints in a file. These days web applications have frontend pipelines that make it harder for humans to understand minified code. This tool contains a nifty regular expression to find and extract the relative URLs in such files. This can help surface new targets for security researchers to look at. It can also be used to periodically compare the results of the same file, to see which new endpoints have been deployed. History has shown that this is a goldmine for bug bounty hunters.

# Usage
The tool has three ways to be executed: with a file name, a URL, or a command. The options are outlined below. By default, only the unique relative URLs are shown. To include an excerpt of the line it was matched in, append `-c` to the command.

 - `ruby extract.rb demo-file.js`
 - `ruby extract.rb https://hackerone.com/some-file.js`
 - `ruby extract.rb '|cat demo-file.js' -c`

# Demo
A demo file is included in the repository. Run the commands as shown above to extract relative URLs from a minified JavaScript file. An excerpt of the output is shown below.

```
...
/vulnerability-coordination-maturity-model/user_data
/mail_subscriptions/update_monthly_digest_subscription
/subscription.json?subscribe=true
/subscription.json?subscribe=false
/terms/finder
/resources/download-web-hacking-101
/settings/reputation/log
/plugins/servlet/webhooks
/secure/project/ViewProjects.jspa
...
```
