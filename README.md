# OWASP Bug Bounty for Projects

##Introduction
Many developers and companies looking to implement security are turning towards OWASP to use Defender libraries that they can implement to secure their critical applications. Since this implies a form of trust in OWASP, many users of these projects might forget or not be aware that many of them are Open Source and lack an expected security assurance review, which at the moment is not done by OWASP.

Testing web applications for security can be a challenging task. But testing that security control libraries are robust in the face of attack is an even more difficult challenge for even the most sophistical assessment professionals.

After a tender process to select a service Bug Bounty Program provider that took place from February till April 2016 , BugCrowd was selected by OWASP for conducting a Bug Bounty Program for specific OWASP projects.

BugCrowd provides their platform and services to allow OWASP projects conduct specific Bug Bounty programs for Defender category projects but also, any other Code Project that needs to be installed and could create vulnerabilities in the installed computer.

Projects that are vulnerable in nature, such as WebGoat, are not part of this initiative. Projects that are not mature enough , such as alpha releases should also not participate in the program.

Bounty programs as a form of Quality Assurance
The purpose of the Bug Bounty is to provide a platform for stable and mature defender projects as a form of Quality assurance. The Bounty is also available for Tool projects such as OWASP ZAP or OWASP Seraphimdroid which require installation on the client device or computer that can represent a security risk to them.

##Bug Bounty Program Process
A project that wants to be part of the bug bounty should fulfill the following criteria:

It should be a Code or Tool Project
Should be part of a defender category but not excluding Tool projects in breaker or defender categories
Should have a stable and mature release version (according to the [COCOMO model])
Project must present the results of a recent automated scan of their code using available DAST or SAST tool (Coverity, SWAMP or any other)
In case the project has never done a code static analysis, we can help the project achieve this through services such as SWAMP or Coverity
If the project is a library, project leader should provide a site protected by the library in question. IIn case one is not available, we can help setup one for the Bounty.

##Scope
The single most important thing that you can do to ensure a successful program is to define a clear scope, leaving nothing open to interpretation. A bounty’s scope informs the researchers what they can and cannot test, and points them to key targets. There’s a careful balance to strike when considering how permissive your program’s scope should be – start by evaluating your attack surface, your unique goals and these considerations:

Too narrow of a scope may result in coverage and testing gaps (creating a false sense of security), or may signal to researchers that it’s not worth their time
A vague or incomplete scope may lead to lost testing time while researchers ask verification questions, or worse, create con ict and disagreement regarding the acceptability of valid submissions.
An overly broad scope may create unwanted noise, and may distract resources and time constrained researchers from focusing on what you really care about
The following is a defined scope for the Bug Bounty Program for OWASP CRSFGuard: https://docs.google.com/document/d/1eTH5lD9MK93ik0vgV0YP0O_jh-DXz2-JbRjZxCS23g0/edit?usp=sharing

##Next
If you are project leader that wants your project to be part of the Bug Bounty please post an email to the owasp project leader list and cc johanna.curiel[at]owasp.org

##Bug Hunters
Check the following Bounty Programs
8OWASP ZAP : https://bugcrowd.com/owaspzap

##FAQ

###I'm a Bug Hunter, how can I participate?
Please take contact with BugCrowd as our Bug Bounty is working through their portal.

For additional inquiries about the OWASP Bug Bounty program, contact support@bugcrowd.com.

###Is the Bug Bounty open to all Researchers?
Yes, however, we are running a private, limited program in this first phase, since this is the first time projects will be tested at this level.
