<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
		"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>Autorsyncbackup status overview</title>
	<style type="text/css" media="screen">
		/* Force Hotmail to display emails at full width */
		.ExternalClass {
			display: block !important;
			width: 100%;
		}

		/* Force Hotmail to display normal line spacing */
		.ExternalClass,
		.ExternalClass p,
		.ExternalClass span,
		.ExternalClass font,
		.ExternalClass td,
		.ExternalClass div {
			line-height: 100%;
		}

		body,
		p,
		h1,
		h2,
		h3,
		h4,
		h5,
		h6 {
			margin: 0;
			padding: 0;
		}

		body,
		p,
		td {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 15px;
			color: #333333;
			line-height: 1.2em;
		}

		h1 {
			font-size: 24px;
			font-weight: normal;
			line-height: 24px;
		}

		body,
		p {
			margin-bottom: 0;
			-webkit-text-size-adjust: none;
			-ms-text-size-adjust: none;
		}

		img {
			line-height: 100%;
			outline: none;
			text-decoration: none;
			-ms-interpolation-mode: bicubic;
		}

		a img {
			border: none;
		}

		.background {
			background-color: #333333;
		}

		table.background {
			margin: 0;
			padding: 0;
			width: 100% !important;
		}

		.block-img {
			display: block;
			line-height: 0;
		}

		a {
			color: white;
			text-decoration: none;
		}

		a,
		a:link {
			color: #2A5DB0;
			text-decoration: underline;
		}

		table td {
			border-collapse: collapse;
		}

		td {
			vertical-align: top;
			text-align: left;
		}

		.wrap {
			width: 90%;
		}

		.wrap-cell {
			padding-top: 30px;
			padding-bottom: 30px;
		}

		.header-cell,
		.body-cell,
		.footer-cell {
			padding-left: 20px;
			padding-right: 20px;
		}

		.header-cell {
			background-color: #eeeeee;
			font-size: 24px;
			color: #000000;
		}

		.body-cell {
			background-color: #ffffff;
			padding-top: 30px;
			padding-bottom: 34px;
		}

		.footer-cell {
			background-color: #eeeeee;
			text-align: center;
			font-size: 13px;
			padding-top: 30px;
			padding-bottom: 30px;
		}

		.card {
			width: 100%;
			margin: 0 auto;
		}

		.data-heading {
			text-align: left;
			padding: 0 10px 0 10px;
			background-color: #ffffff;
			font-weight: bold;
		}

		.data-value {
			text-align: left;
			padding: 0 10px 0 10px;
			background-color: #ffffff;
		}

		.force-full-width {
			width: 100% !important;
		}
	</style>
	<style type="text/css" media="only screen and (max-width: 600px)">
		@media only screen and (max-width: 600px) {
			body[class*="background"],
			table[class*="background"],
			td[class*="background"] {
				background: #eeeeee !important;
			}

			table[class="card"] {
				width: auto !important;
			}

			td[class="data-heading"],
			td[class="data-value"] {
				display: block !important;
			}

			td[class="data-heading"] {
				text-align: left !important;
				padding: 10px 10px 0;
			}

			table[class="wrap"] {
				width: 100% !important;
			}

			td[class="wrap-cell"] {
				padding-top: 0 !important;
				padding-bottom: 0 !important;
			}
		}
	</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" bgcolor="" class="background">
  <table align="center" border="0" cellpadding="0" cellspacing="0" class="background" width="100%">
    <tr>
      <td align="center" class="background" valign="top" width="100%">
        <center>
          <table cellpadding="0" cellspacing="0" class="wrap" width="600">
            <tr>
              <td class="wrap-cell" style="padding-top:30px; padding-bottom:30px;" valign="top">
                <table cellpadding="0" cellspacing="0" class="force-full-width">
                  <tr>
                    <td class="header-cell" height="60" style="padding-top:15px;" valign="top">Auto Rsync Backup report (test mail)</td>
                  </tr>
                  <tr>
                    <td class="body-cell" valign="top">
                      <table bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td>
                            <table bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="100%">
                              <tr>
                                <td align="center" style="padding:20px 0;">
                                  <center>
                                    <table cellpadding="0" cellspacing="0" class="card">
                                      <tr>
                                        <td style="background-color:{%- if state == "ok" %}green{% else %}red{% endif %}; text-align:center; padding:10px; color:white;">Overall backup state: {{ state }}</td>
                                      </tr>
                                      <tr>
                                        <td style="border:1px solid {% if state == "ok" %}green{% else %}red{% endif %};">
                                          {%- if state == "ok" %}No errors found, backup succeeded{% else %}Errors found, investigate this e-mail!{% endif %}
                                          <table cellpadding="0" cellspacing="20" width="100%"></table>
                                        </td>
                                      </tr>
                                    </table>
                                  </center>
                                </td>
                              </tr>
                            </table>
                            <table bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="100%">
                              <tr>
                                <td align="center" style="padding:20px 0;">
                                  <center>
                                    <table cellpadding="0" cellspacing="0" class="card">
                                      <tr>
                                        <td style="background-color:white; text-align:center; padding:10px; color:black;">Overall backup info</td>
                                      </tr>
                                      <tr>
                                        <td style="border:1px solid {% if state == "ok" %}green{% else %}red{% endif %}; padding: 20px 0 20px;">
                                          <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                              <td>
                                                <table bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="100%">
                                                  <tr>
                                                    <td class="data-heading" width="50%">Overall backup state</td>
                                                    <td class="data-value">{{ state }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Backup host count</td>
                                                    <td class="data-value">{{ stats.total_host_count }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td colspan="2">&nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Backup host list</td>
                                                    <td class="data-value">
                                                    {%- for item in hosts %}
                                                    {{ item }}<br>
                                                    {% endfor %}</td>
                                                  </tr>
                                                  <tr>
                                                    <td colspan="2">&nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Missing hosts:</td>
                                                    <td class="data-value">
                                                    {%- for item in missinghosts %}
                                                    {{ item }}<br>
                                                    {% endfor %}</td>
                                                  </tr>
                                                  <tr>
                                                    <td colspan="2">&nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total backup duration</td>
                                                    <td class="data-value">{{ stats.total_backup_duration|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Average backup duration</td>
                                                    <td class="data-value">{{ stats.average_backup_duration|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Average speed limit in KBs</td>
                                                    <td class="data-value">{{ stats.average_speed_limit_kb }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total number of files</td>
                                                    <td class="data-value">{{ stats.total_number_of_files|numberformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total number of files transferred</td>
                                                    <td class="data-value">{{ stats.total_number_of_files_transferred|numberformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="30%">Total file size</td>
                                                    <td class="data-value">{{ stats.total_file_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total transferred file size</td>
                                                    <td class="data-value">{{ stats.total_transferred_file_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total literal data</td>
                                                    <td class="data-value">{{ stats.total_literal_data|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total matched data</td>
                                                    <td class="data-value">{{ stats.total_matched_data|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total file list size</td>
                                                    <td class="data-value">{{ stats.total_file_list_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total file list generation time</td>
                                                    <td class="data-value">{{ stats.total_file_list_generation_time|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total file list transfer time</td>
                                                    <td class="data-value">{{ stats.total_file_list_transfer_time|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total sent</td>
                                                    <td class="data-value">{{ stats.total_bytes_sent|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total received</td>
                                                    <td class="data-value">{{ stats.total_bytes_received|bytesformat }}</td>
                                                  </tr>
                                                </table>
                                              </td>
                                            </tr>
                                          </table>
                                        </td>
                                      </tr>
                                    </table>
                                    <!-- jobs -->
                                    {% for jrh in jobrunhistory %}
                                    <table cellpadding="0" cellspacing="0" class="card" style="margin-top: 20px">
                                      <tr>
                                        <td style="background-color:{%- if jrh.rsync_backup_status == 1 %}green{%- else %}red{%- endif %}; text-align:center; padding:10px; color:white !important;"><span style="color: #fff">{{ jrh.hostname }}</span></td>
                                      </tr>
                                      <tr>
                                        <td style="border:1px solid {% if jrh.rsync_backup_status == 1 %}green{% else %}red{% endif %}; padding: 20px 0 20px;">
                                          <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                              <td>
                                                <table bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="100%">
                                                  <tr>
                                                    <td class="data-heading" width="50%">Rsync return message</td>
                                                    <td class="data-value">{%- if jrh.rsync_backup_status == 1 %}Sucess{%- else %}Error{%- endif %}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Rsync errors</td>
                                                    <td class="data-value">
                                                      <ul>
                                                        <li>{%- if jrh.rsync_backup_status == 0 %}{{ jrh.rsync_return_code}} - {{ jrh.rsync_stdout}}{%- else %}No errors{%- endif %}</li>
                                                      </ul>
                                                    </td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Missing files and directories</td>
                                                    <td class="data-value">
                                                      <ul>
                                                        <li>TODO: To be implemented</li>
                                                      </ul>
                                                    </td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Backup datetime</td>
                                                    <td class="data-value">{{ jrh.startdatetime|datetimeformat("%d-%m-%Y %H:%M:%S") }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Backup duration</td>
                                                    <td class="data-value">{{ (jrh.enddatetime - jrh.startdatetime)|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Backup speed limit</td>
                                                    <td class="data-value">{{ jrh.speedlimitkb }} KB/s</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Number of files</td>
                                                    <td class="data-value">{{ jrh.rsync_number_of_files|numberformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Number of files transferred</td>
                                                    <td class="data-value">{{ jrh.rsync_number_of_files_transferred|numberformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total file size</td>
                                                    <td class="data-value">{{ jrh.rsync_total_file_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total file size transferred</td>
                                                    <td class="data-value">{{ jrh.rsync_total_transferred_file_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Literal data</td>
                                                    <td class="data-value">{{ jrh.rsync_literal_data|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Matched data</td>
                                                    <td class="data-value">{{ jrh.rsync_matched_data|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">File list size</td>
                                                    <td class="data-value">{{ jrh.rsync_file_list_size|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">File list generation time</td>
                                                    <td class="data-value">{{ jrh.rsync_file_list_generation_time|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">File list transfer time</td>
                                                    <td class="data-value">{{ jrh.rsync_file_list_transfer_time|secondsformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total sent</td>
                                                    <td class="data-value">{{ jrh.rsync_total_bytes_sent|bytesformat }}</td>
                                                  </tr>
                                                  <tr>
                                                    <td class="data-heading" width="50%">Total received</td>
                                                    <td class="data-value">{{ jrh.rsync_total_bytes_received|bytesformat }}</td>
                                                  </tr>
                                                </table>
                                              </td>
                                            </tr>
                                          </table>
                                        </td>
                                      </tr>
                                    </table>
                                    {% endfor %}
                                  </center>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <tr>
                          <td style="padding-top:20px;background-color:#ffffff;">Kind Regards,<br>
                          AutoRsyncBackup</td>
                        </tr>
                      </table>
                    </td>
                  </tr>
                  <tr>
                    <td class="footer-cell" valign="top">
                      <a href="https://github.com/Nextpertise/autorsyncbackupw">AutoRsyncBackup on Github</a>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </center>
      </td>
    </tr>
  </table>
</body>
</html>
