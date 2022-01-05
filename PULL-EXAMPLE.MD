Thank you for contributing to our Log4j-affected-db GitHub Repository! Please follow the steps listed below:

**Step 1:** Go to the cisagov data .yml files for choosing the appropriate file to include your updates (example link). The files are separated based on the alphabetical first letter of the vendor name. For example, 'CISA' would be located in .../cisagov_C.yml

**Step 2:** Click the file edit button.

**Step 3:** Add the blank template to the **.yml** file for new entries and fill it out with the correct data.  Note: we are tracking multiple CVEs on the backend but are currently only displaying all the CVE-2021-44228. The multiple CVEs will not be listed in the table per the current request, instead the logic will determine and present a single status based on the available data in the template. 

Blank template:
```
- vendor: ''
  product: ''
  cves:
    cve-2021-4104:
      investigated: ''
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
    cve-2021-44228:
      investigated: ''
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
    cve-2021-45046:
      investigated: ''
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
    cve-2021-45105:
      investigated: ''
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
  vendor_links:
  - ''
  notes: ''
  references:
  - ''
  reporter: cisagov
  last_updated: ''
```
**Step 3:** Verify the new entry was entered before and/or after the prior and next entries.

   - If you are adding it to the beginning of the file, ensure you are pasting it after “software:” and before the next entry starting with “- vendor:”.
   -	If you are adding it to the end of the file, ensure the entry ends before the file is closed out with: “...”

**Step 4:** When you add content to the file, remove the '' or [] for fields which are replaced with values (strings '' or lists [] should be replaced as shown in the example below, with list values on the following line(s), starting with hyphen(s) “-”). The symbols should only remain used when fields remain empty. For example, fixed_versions: [] in our example below remains as is, given there are no patched versions available for this entry.

Note: not all fields have to be updated.

Entry example:
```
- vendor: CISA
  product: Product
  cves:
    cve-2021-4104:
      investigated: false
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
    cve-2021-44228:
      investigated: true
      affected_versions:
      - <=8.4.6
      - <=8.5.3
      - <=8.6.4
      fixed_versions: []
      unaffected_versions: []
    cve-2021-45046:
      investigated: false
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
    cve-2021-45105:
      investigated: false
      affected_versions: []
      fixed_versions: []
      unaffected_versions: []
  vendor_links:
  - https://forums.extrahop.com/t/extrahop-update-on-log4shell/8148
  notes: Contains vulnerable code but not likely to get
  unauthenticated user input to the log4j component.
  references:
  - ''
  reporter: cisagov
  last_updated: '2021-12-14T00:00:00'
```
**Step 5:** validate your data follows the appropriate format and proceed with submitting the pull request. Follow questions may be submitted through the Pull Request. 

For any additional questions feel free to submit a Issue request [here](https://github.com/cisagov/log4j-affected-db/issues)
