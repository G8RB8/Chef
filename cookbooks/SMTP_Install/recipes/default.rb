
remote_directory "D:\\VeretechServices" do
  source "VeretechServices"
end

powershell_script "Web-Ftp-Server" do
     code "add-windowsfeature Web-Ftp-Server"
     action :run
end
powershell_script "Web-Ftp-Service" do
     code "add-windowsfeature Web-Ftp-Service"
     action :run
end
powershell_script "Web-Mgmt-Tools" do
     code "add-windowsfeature Web-Mgmt-Tools"
     action :run
end
powershell_script "Web-Mgmt-Console" do
     code "add-windowsfeature Web-Mgmt-Console"
     action :run
end
powershell_script "Web-Mgmt-Compat" do
     code "add-windowsfeature Web-Mgmt-Compat"
     action :run
end

powershell_script "Web-Lgcy-Mgmt-Console" do
     code "add-windowsfeature Web-Lgcy-Mgmt-Console"
     action :run
end

powershell_script "RSAT-SMTP" do
     code "add-windowsfeature RSAT-SMTP"
     action :run
end
powershell_script "SMTP-Server" do
     code "add-windowsfeature SMTP-Server"
     action :run
end
windows_task 'Send Leads' do
  user 'bbdev\vservice'
  password '#$M1nIM0v53!'
  cwd 'C:\Program Files (x86)\Gammadyne Mailer'
  command 'C:\Program Files (x86)\Gammadyne Mailer\gm.exe /s /m /n /q D:\Gammadyne\EtradeIn\Leads.mmp'
  run_level :highest
  frequency :minute
  frequency_modifier 2
 end

 windows_task 'Email Distrib' do
   user 'bbdev\vservice'
   password '#$M1nIM0v53!'
   cwd 'C:\Program Files (x86)\Gammadyne Mailer'
   command 'C:\Program Files (x86)\Gammadyne Mailer\gm.exe /s /m /n /q D:\Gammadyne\EmailDistrib\Emaildistrib.MMP'
   run_level :highest
   frequency :minute
   frequency_modifier 2
  end
