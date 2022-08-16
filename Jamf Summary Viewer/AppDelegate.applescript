--
--  AppDelegate.applescript
--  Jamf Pro Summary
--
--  Created by Anthony Horn on 3/7/22.
--  
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
    property theSummaryPath : missing value
    property theSelection : missing value
    property theTextPane : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    on importFileButton_(sender)
        set getSummaryFile to choose file with prompt "Please select the Jamf Pro Summary file:"
        set summaryFile to POSIX path of getSummaryFile
        theSummaryPath's setStringValue:summaryFile
    end importFileButton_
    
    on summaryButton_(sender)
        set titleEnd to "Activation Code"
        set titleBegin to "*"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:("Jamf Pro Summary")
    end summaryButton_
    
    on activationCodeButton_(sender)
        set titleEnd to "Licensed Software"
        set titleBegin to "Activation Code"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end activationCodeButton_
    
    on licensedSoftwareButton_(sender)
        set titleEnd to "Policies"
        set titleBegin to "Licensed Software"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end licensedSoftwareButton_
    
    on policiesButton_(sender)
        set titleEnd to "OS X Configuration Profiles"
        set titleBegin to "Policies"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end policiesButton_
    
    on osxconfigurationProfilesButton_(sender)
        set titleEnd to "Managed Preference Profiles"
        set titleBegin to "OS X Configuration Profiles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end osxconfigurationProfilesButton_
    
    on managedPrefrenceProfilesButton_(sender)
        set titleEnd to "Restricted Software"
        set titleBegin to "Managed Preference Profiles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end managedPrefrenceProfilesButton_
    
    on restrictedSoftwareButton_(sender)
        set titleEnd to "PreStages"
        set titleBegin to "Restricted Software"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end restrictedSoftwareButton_
    
    on prestagesButton_(sender)
        set titleEnd to "Smart Computer Groups"
        set titleBegin to "PreStages"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end prestagesButton_
    
    on smartComputerGroupsButton_(sender)
        set titleEnd to "Computer PreStage Enrollments"
        set titleBegin to "Smart Computer Groups"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end smartComputerGroupsButton_
    
    on computerPrestageEnrollmentsButton_(sender)
        set titleEnd to "Mac Applications"
        set titleBegin to "Computer PreStage Enrollments"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end computerPrestageEnrollmentsButton_
    
    on macApplicationsButton_(sender)
        set titleEnd to "Patch Management Software Titles"
        set titleBegin to "Mac Applications"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end macApplicationsButton_
    
    on patchManagementSoftwareTitlesButton_(sender)
        set titleEnd to "Patch Policies"
        set titleBegin to "Patch Management Software Titles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end patchManagementSoftwareTitlesButton_
    
    on patchPoliciesButton_(sender)
        set titleEnd to "Mobile Device Configuration Profiles"
        set titleBegin to "Patch Policies"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end patchPoliciesButton_
    
    on mobileDeviceConfigurationProfilesButton_(sender)
        set titleEnd to "Provisioning Profiles"
        set titleBegin to "Mobile Device Configuration Profiles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceConfigurationProfilesButton_
    
    on provisioningProfilesButton_(sender)
        set titleEnd to "Mobile Device Applications"
        set titleBegin to "Provisioning Profiles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end provisioningProfilesButton_
    
    on mobileDeviceApplicationsButton_(sender)
        set titleEnd to "eBooks"
        set titleBegin to "Mobile Device Applications"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceApplicationsButton_
    
    on eBooksButton_(sender)
        set titleEnd to "Smart Mobile Device Groups"
        set titleBegin to "eBooks"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end eBooksButton_
    
    on smartMobileDeviceGroupsButton_(sender)
        set titleEnd to "Classes"
        set titleBegin to "Smart Mobile Device Groups"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end smartMobileDeviceGroupsButton_
    
    on classesButton_(sender)
        set titleEnd to "Enrollment Profiles"
        set titleBegin to "Classes"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end classesButton_
    
    on enrollmentProfilesButton_(sender)
        set titleEnd to "Mobile Device PreStage Enrollments"
        set titleBegin to "Enrollment Profiles"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end enrollmentProfilesButton_
    
    on mobileDevicePrestageEnrollmentsButton_(sender)
        set titleEnd to "Accounts"
        set titleBegin to "Mobile Device PreStage Enrollments"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDevicePrestageEnrollmentsButton_
    
    on accountsButton_(sender)
        set titleEnd to "Groups"
        set titleBegin to "Accounts"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end accountsButton_
    
    on groupsButton_(sender)
        set titleEnd to "Password Policy"
        set titleBegin to "Groups"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end groupsButton_
    
    on passwordPolicyButton_(sender)
        set titleEnd to "LDAP Servers"
        set titleBegin to "Password Policy"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end passwordPolicyButton_
    
    on ldapServersButton_(sender)
        set titleEnd to "Cloud Identity Providers"
        set titleBegin to "LDAP Servers"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end ldapServersButton_
    
    on cloudIdentityProvidersButton_(sender)
        set titleEnd to "SMTP Server"
        set titleBegin to "Cloud Identity Providers"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end cloudIdentityProvidersButton_
    
    on smtpServerButton_(sender)
        set titleEnd to "Clustering"
        set titleBegin to "SMTP Server"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end smtpServerButton_
    
    on clusteringButton_(sender)
        set titleEnd to "Change Management"
        set titleBegin to "Clustering"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end clusteringButton_
    
    on changeManagementButton_(sender)
        set titleEnd to "Apache Tomcat Settings"
        set titleBegin to "Change Management"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end changeManagementButton_
    
    on apacheTomcatSettingsButton_(sender)
        set titleEnd to "Log Flushing"
        set titleBegin to "Apache Tomcat Settings"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end apacheTomcatSettingsButton_
    
    on logFlushingButton_(sender)
        set titleEnd to "Retention Policies"
        set titleBegin to "Log Flushing"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end logFlushingButton_
    
    on retentionPoliciesButton_(sender)
        set titleEnd to "Conditional Access and Device Compliance"
        set titleBegin to "Retention Policies"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end retentionPoliciesButton_
    
    on conditionalAccessandDeviceComplianceButton_(sender)
        set titleEnd to "Push Certificates"
        set titleBegin to "Conditional Access and Device Compliance"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end conditionalAccessandDeviceComplianceButton_
    
    on pushCertificatesButton_(sender)
        set titleEnd to "GSX Connection"
        set titleBegin to "Push Certificates"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end pushCertificatesButton_
    
    on gsxConnectionButton_(sender)
        set titleEnd to "JSS URL"
        set titleBegin to "GSX Connection"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end gsxConnectionButton_
    
    on jssURLButton_(sender)
        set titleEnd to "PKI Certificates"
        set titleBegin to "JSS URL"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end jssURLButton_
    
    on pkiCertificatesButton_(sender)
        set titleEnd to "Users"
        set titleBegin to "PKI Certificates"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end pkiCertificatesButton_
    
    on usersButton_(sender)
        set titleEnd to "VPP Accounts"
        set titleBegin to "Users"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end usersButton_
    
    on vppAccountsButton_(sender)
        set titleEnd to "VPP Invitations"
        set titleBegin to "VPP Accounts"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end vppAccountsButton_
    
    on vppInvitationsButton_(sender)
        set titleEnd to "User Groups"
        set titleBegin to "VPP Invitations"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end vppInvitationsButton_
    
    on userGroupsButton_(sender)
        set titleEnd to "Device Enrollment Program"
        set titleBegin to "User Groups"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end userGroupsButton_
    
    on deviceEnrollmentProgramButton_(sender)
        set titleEnd to "Categories"
        set titleBegin to "Device Enrollment Program"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end deviceEnrollmentProgramButton_
    
    on categoriesButton_(sender)
        set titleEnd to "Packages"
        set titleBegin to "Categories"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end categoriesButton_
    
    on packagesButton_(sender)
        set titleEnd to "Scripts"
        set titleBegin to "Packages"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end packagesButton_
    
    on scriptsButton_(sender)
        set titleEnd to "Printers"
        set titleBegin to "Scripts"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end scriptsButton_
    
    on printersButton_(sender)
        set titleEnd to "Directory Bindings"
        set titleBegin to "Printers"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end printersButton_
    
    on directoryBindingsButton_(sender)
        set titleEnd to "Disk Encryption Configurations"
        set titleBegin to "Directory Bindings"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end directoryBindingsButton_
    
    on diskEncryptionConfigurationsButton_(sender)
        set titleEnd to "Dock Items"
        set titleBegin to "Disk Encryption Configurations"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end diskEncryptionConfigurationsButton_
    
    on dockItemsButton_(sender)
        set titleEnd to "Configurations"
        set titleBegin to "Dock Items"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end dockItemsButton_
    
    on configurationsButton_(sender)
        set titleEnd to "Patch External Sources"
        set titleBegin to "Configurations"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end configurationsButton_
    
    on patchExternalSourcesButton_(sender)
        set titleEnd to "Cloud Distribution Point"
        set titleBegin to "Patch External Sources"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end patchExternalSourcesButton_
    
    on cloudDistributionPointButton_(sender)
        set titleEnd to "File Share Distribution Points"
        set titleBegin to "Cloud Distribution Point"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end cloudDistributionPointButton_
    
    on fileShareDistributionPointsButton_(sender)
        set titleEnd to "Software Update Servers"
        set titleBegin to "File Share Distribution Points"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end fileShareDistributionPointsButton_
    
    on softwareUpdateServersButton_(sender)
        set titleEnd to "User-Initiated Enrollment"
        set titleBegin to "Software Update Servers"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end softwareUpdateServersButton_
    
    on userInitiatedEnrollmentButton_(sender)
        set titleEnd to "Computer Inventory Collection"
        set titleBegin to "User-Initiated Enrollment"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end userInitiatedEnrollmentButton_
    
    on computerInventoryCollectionButton_(sender)
        set titleEnd to "Check-In"
        set titleBegin to "Computer Inventory Collection"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end computerInventoryCollectionButton_
    
    on checkInButton_(sender)
        set titleEnd to "Security"
        set titleBegin to "Check-In"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end checkInButton_
    
    on securityButton_(sender)
        set titleEnd to "Computer Extension Attributes"
        set titleBegin to "Security"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end securityButton_
    
    on computerExtensionAttributesButton_(sender)
        set titleEnd to "Autorun Imaging"
        set titleBegin to "Computer Extension Attributes"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end computerExtensionAttributesButton_
    
    on autorunImagingButton_(sender)
        set titleEnd to "Self Service"
        set titleBegin to "Autorun Imaging"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end autorunImagingButton_
    
    on selfServiceButton_(sender)
        set titleEnd to "Self Service Bookmarks"
        set titleBegin to "Self Service"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end selfServiceButton_
    
    on selfServiceBookmarksButton_(sender)
        set titleEnd to "Peripheral Types"
        set titleBegin to "Self Service Bookmarks"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end selfServiceBookmarksButton_
    
    on peripheralTypesButton_(sender)
        set titleEnd to "Removable MAC Addresses"
        set titleBegin to "Peripheral Types"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end peripheralTypesButton_
    
    on removableMACAddressesButton_(sender)
        set titleEnd to "Mobile Device Inventory Collection"
        set titleBegin to "Removable MAC Addresses"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end removableMACAddressesButton_
    
    on mobileDeviceInventoryCollectionButton_(sender)
        set titleEnd to "Mobile Device Extension Attributes"
        set titleBegin to "Mobile Device Inventory Collection"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceInventoryCollectionButton_
    
    on mobileDeviceExtensionAttributesButton_(sender)
        set titleEnd to "Mobile Device Self Service"
        set titleBegin to "Mobile Device Extension Attributes"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceExtensionAttributesButton_
    
    on mobileDeviceSelfServiceButton_(sender)
        set titleEnd to "Mobile Device App Maintenance Settings"
        set titleBegin to "Mobile Device Self Service"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceSelfServiceButton_
    
    on mobileDeviceAppMaintenanceSettingsButton_(sender)
        set titleEnd to "Buildings"
        set titleBegin to "Mobile Device App Maintenance Settings"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end mobileDeviceAppMaintenanceSettingsButton_
    
    on buildingsButton_(sender)
        set titleEnd to "Departments"
        set titleBegin to "Buildings"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end buildingsButton_
    
    on departmentsButton_(sender)
        set titleEnd to "Network Segments"
        set titleBegin to "Departments"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end departmentsButton_
    
    on networkSegmentsButton_(sender)
        set titleEnd to "Sites"
        set titleBegin to "Network Segments"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end networkSegmentsButton_
    
    on sitesButton_(sender)
        set titleEnd to "Webhooks"
        set titleBegin to "Sites"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end sitesButton_
    
    on webhooksButton_(sender)
        set titleEnd to "Jamf Parent"
        set titleBegin to "Webhooks"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end webhooksButton_
    
    on jamfParentButton_(sender)
        set titleEnd to "Table row counts"
        set titleBegin to "Jamf Parent"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end jamfParentButton_
    
    on tableRowCountsButton_(sender)
        set titleEnd to "Table sizes"
        set titleBegin to "Table row counts"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "awk 'f { if (/^" & titleEnd & "$/){printf \"%s\", buf; f = 0; buf=\"\"} else buf = buf $0 ORS} /^" & titleBegin & "$/ { f = 1 }' \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end tableRowCountsButton_
    
    on tableSizesButton_(sender)
        set titleBegin to "Jamf Pro Summary"
        set titleEnd to "Table sizes"
        
        set getSummaryFile to theSummaryPath's stringValue() as text
        set summaryFile to POSIX path of getSummaryFile
        set titleResult to do shell script "grep -vE \"" & titleBegin & "|" & titleEnd & "\" \"" & summaryFile & "\"" as text
        theTextPane's setString:titleResult
        theSelection's setStringValue:titleBegin
    end tableSizesButton_
	
end script
