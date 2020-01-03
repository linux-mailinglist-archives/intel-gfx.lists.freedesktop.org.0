Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F712FC15
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 19:05:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F8389E32;
	Fri,  3 Jan 2020 18:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 901 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jan 2020 02:12:12 UTC
Received: from tpecef01.compal.com (exmail3.compal.com [59.120.207.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB156E167
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 02:12:12 +0000 (UTC)
X-UUID: bb65d860ee0342b889c2af2bdeae80a3-20200103
Received: from tpembx01.compal.com [(10.110.15.26)] by tpecef01.compal.com
 (envelope-from <aj_cheng@compal.com>)
 (Cellopoint E-mail Firewall v4.1.6 Build 0408 with TLS)
 with ESMTP id 1736225997; Fri, 03 Jan 2020 09:57:05 +0800
Received: from TPEMBX05.compal.com (10.110.15.29) by TPEMBX01.compal.com
 (10.110.15.26) with Microsoft SMTP Server (TLS) id 15.0.995.29; Fri, 3 Jan
 2020 09:57:04 +0800
Received: from TPEMBX01.compal.com (10.110.15.26) by TPEMBX05.compal.com
 (10.110.15.29) with Microsoft SMTP Server (TLS) id 15.0.995.29; Fri, 3 Jan
 2020 09:57:03 +0800
Received: from TPEMBX01.compal.com ([fe80::1942:f41b:515b:f225]) by
 TPEMBX01.compal.com ([fe80::1942:f41b:515b:f225%16]) with mapi id
 15.00.0995.028; Fri, 3 Jan 2020 09:57:03 +0800
From: <AJ_Cheng@compal.com>
To: <intel-gfx@lists.freedesktop.org>, <alsa-devel@alsa-project.org>
Thread-Topic: USB Type-C monitor flashes once when play a video file after
 unplug and re-plug the monitor
Thread-Index: AdXB0nlM5qaLFlJOTlavFS+ZjDjiAw==
Date: Fri, 3 Jan 2020 01:57:03 +0000
Message-ID: <d7aba6970fbd48f2b32e2bc6d838ab20@TPEMBX01.compal.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.110.15.241]
X-TM-SNTS-SMTP: 403C9FDEFFC975AC44920C8AA31028E8731995EBB058783C2FF706CCA0F669922000:8
Content-Type: multipart/mixed;
 boundary="_004_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_"
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Jan 2020 18:05:13 +0000
Subject: [Intel-gfx] USB Type-C monitor flashes once when play a video file
 after unplug and re-plug the monitor
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: CindyXT_Wang@compal.com, Nelson_Ye@compal.com, Shane_Yap@compal.com,
 Lucien_Kao@compal.com, Evan_Tseng@compal.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_004_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_
Content-Type: multipart/alternative;
	boundary="_000_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_"

--_000_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sirs,
        Here is chromebook SW team from Compal=2E
As the mail title, we hit issue that the external monitor will flash once =
when play video after hot pluging=2E
We can reproduce not only on chromebook but also ubuntu 16=2E04=2E
There has higher failure rate with Dell Solomon dock and Dell S2718D =
monitor=2E

We found adding the delay in "sound/pci/hda/patch_hdmi=2Ec " can fix this =
issue=2E(as the attachment)
May need your help to review and advice=2E Thanks=2E

Here is the issue number in gitlab for more detail=2E
https://gitlab=2Efreedesktop=2Eorg/drm/intel/issues/318



AJ Cheng
NID/NID1
e-mail: AJ_Cheng@compal=2Ecom<mailto:AJ_Cheng@compal=2Ecom>
Tel:  +886-2-8797-8599 ext=2E 17561
Mobile : +886-932827829
COMPAL Electronics, Inc=2E


--_000_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:a=3D"urn:schemas-microsoft-com:office:access" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" =
xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"#RowsetSchema" =
xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" =
xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" =
xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" =
xmlns:odc=3D"urn:schemas-microsoft-com:office:odc" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns:html=3D"http://www=2Ew3=2Eorg/TR/REC-html40" =
xmlns:q=3D"http://schemas=2Exmlsoap=2Eorg/soap/envelope/" =
xmlns:rtc=3D"http://microsoft=2Ecom/officenet/conferencing" =
xmlns:D=3D"DAV:" xmlns:Repl=3D"http://schemas=2Emicrosoft=2Ecom/repl/" =
xmlns:mt=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/meetings/" =
xmlns:x2=3D"http://schemas=2Emicrosoft=2Ecom/office/excel/2003/xml" =
xmlns:ppda=3D"http://www=2Epassport=2Ecom/NameSpace=2Exsd" =
xmlns:ois=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/ois/" =
xmlns:dir=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/directory/" =
xmlns:ds=3D"http://www=2Ew3=2Eorg/2000/09/xmldsig#" =
xmlns:dsp=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/dsp" =
xmlns:udc=3D"http://schemas=2Emicrosoft=2Ecom/data/udc" =
xmlns:xsd=3D"http://www=2Ew3=2Eorg/2001/XMLSchema" =
xmlns:sub=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/2002/1/alerts=
/" xmlns:ec=3D"http://www=2Ew3=2Eorg/2001/04/xmlenc#" =
xmlns:sp=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/" =
xmlns:sps=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/" =
xmlns:xsi=3D"http://www=2Ew3=2Eorg/2001/XMLSchema-instance" =
xmlns:udcs=3D"http://schemas=2Emicrosoft=2Ecom/data/udc/soap" =
xmlns:udcxf=3D"http://schemas=2Emicrosoft=2Ecom/data/udc/xmlfile" =
xmlns:udcp2p=3D"http://schemas=2Emicrosoft=2Ecom/data/udc/parttopart" =
xmlns:wf=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/workflow/" =
xmlns:dsss=3D"http://schemas=2Emicrosoft=2Ecom/office/2006/digsig-setup" =
xmlns:dssi=3D"http://schemas=2Emicrosoft=2Ecom/office/2006/digsig" =
xmlns:mdssi=3D"http://schemas=2Eopenxmlformats=2Eorg/package/2006/digital-s=
ignature" =
xmlns:mver=3D"http://schemas=2Eopenxmlformats=2Eorg/markup-compatibility/20=
06" xmlns:m=3D"http://schemas=2Emicrosoft=2Ecom/office/2004/12/omml" =
xmlns:mrels=3D"http://schemas=2Eopenxmlformats=2Eorg/package/2006/relations=
hips" xmlns:spwp=3D"http://microsoft=2Ecom/sharepoint/webpartpages" =
xmlns:ex12t=3D"http://schemas=2Emicrosoft=2Ecom/exchange/services/2006/type=
s" =
xmlns:ex12m=3D"http://schemas=2Emicrosoft=2Ecom/exchange/services/2006/mess=
ages" =
xmlns:pptsl=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/SlideLibrar=
y/" =
xmlns:spsl=3D"http://microsoft=2Ecom/webservices/SharePointPortalServer/Pub=
lishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" =
xmlns:tax=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/taxonomy/soap/" =
xmlns:tns=3D"http://schemas=2Emicrosoft=2Ecom/sharepoint/soap/recordsreposi=
tory/" =
xmlns:spsup=3D"http://microsoft=2Ecom/webservices/SharePointPortalServer/Us=
erProfileService" xmlns:mml=3D"http://www=2Ew3=2Eorg/1998/Math/MathML" =
xmlns:st=3D"&#1;" xmlns=3D"http://www=2Ew3=2Eorg/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
/* Style Definitions */
p=2EMsoNormal, li=2EMsoNormal, div=2EMsoNormal
	{margin:0cm;
	margin-bottom:=2E0001pt;
	font-size:12=2E0pt;
	font-family:"Calibri","sans-serif";}
a:link, span=2EMsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span=2EMsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span=2EEmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
=2EMsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612=2E0pt 792=2E0pt;
	margin:72=2E0pt 90=2E0pt 72=2E0pt 90=2E0pt;}
div=2EWordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-TW" link=3D"blue" vlink=3D"purple" =
style=3D"text-justify-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi =
Sirs,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is =
chromebook SW team from Compal=2E
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">As the =
mail title, we hit issue that the external monitor will flash once when =
play video after hot pluging=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">We can =
reproduce not only on chromebook but also ubuntu =
16=2E04=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">There =
has higher failure rate with Dell Solomon dock and Dell S2718D =
monitor=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">We =
found adding the delay in &quot;sound/pci/hda/patch_hdmi=2Ec &quot; can fix=
 this issue=2E(as the attachment)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">May =
need your help to review and advice=2E Thanks=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Here is=
 the issue number in gitlab for more detail=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a =
href=3D"https://gitlab=2Efreedesktop=2Eorg/drm/intel/issues/318">https://gi=
tlab=2Efreedesktop=2Eorg/drm/intel/issues/318</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:black">AJ Cheng<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F">NID/NID1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F">e-mail:
</span><span lang=3D"EN-US" style=3D"font-size:14=2E0pt"><a =
href=3D"mailto:AJ_Cheng@compal=2Ecom"><span =
style=3D"color:blue">AJ_Cheng@compal=2Ecom</span></a><span =
style=3D"color:#7F7F7F"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F">Tel:&nbsp;
</span><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#0070C0">&#43;886-2-8797-8599&nbsp;ext=2E=
 17561<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F">Mobile :</span><span =
lang=3D"EN-US" style=3D"font-size:14=2E0pt;color:#0070C0"> =
&#43;886-932827829</span><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#7F7F7F">COMPAL Electronics, =
Inc=2E</span><span lang=3D"EN-US" =
style=3D"font-size:14=2E0pt;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>
<!--type:html--><!--{-->=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
This message may contain information which is private, privileged or =
confidential of Compal Electronics, Inc=2E<br>
If you are not the intended recipient of this message, please notify the =
sender and destroy/delete the message=2E<br>
Any review, retransmission, dissemination or other use of, or taking of any=
 action in reliance upon this information,<br>
by persons or entities other than the intended recipient is =
prohibited=2E<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<!--}-->
--_000_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_--

--_004_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_
Content-Type: application/octet-stream; name="flash_once.diff"
Content-Description: flash_once.diff
Content-Disposition: attachment; filename="flash_once.diff"; size=593;
	creation-date="Mon, 16 Dec 2019 06:29:48 GMT";
	modification-date="Mon, 16 Dec 2019 06:29:48 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL3NvdW5kL3BjaS9oZGEvcGF0Y2hfaGRtaS5jIGIvc291bmQvcGNpL2hkYS9w
YXRjaF9oZG1pLmMKaW5kZXggNDQ0OGFiNi4uNzdkYzZiOSAxMDA2NDQKLS0tIGEvc291bmQvcGNp
L2hkYS9wYXRjaF9oZG1pLmMKKysrIGIvc291bmQvcGNpL2hkYS9wYXRjaF9oZG1pLmMKQEAgLTg1
NCw3ICs4NTQsNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3ZlcmlmeV9EMChzdHJ1Y3QgaGRhX2Nv
ZGVjICpjb2RlYywKIAkgKiBjb252ZXJ0ZXJzIGFyZSBpbiBjb3JyZWN0IHBvd2VyIHN0YXRlICov
CiAJaWYgKCFzbmRfaGRhX2NoZWNrX3Bvd2VyX3N0YXRlKGNvZGVjLCBjdnRfbmlkLCBBQ19QV1JT
VF9EMCkpCiAJCXNuZF9oZGFfY29kZWNfd3JpdGUoY29kZWMsIGN2dF9uaWQsIDAsIEFDX1ZFUkJf
U0VUX1BPV0VSX1NUQVRFLCBBQ19QV1JTVF9EMCk7Ci0KKwltc2xlZXAoNDApOwogCWlmICghc25k
X2hkYV9jaGVja19wb3dlcl9zdGF0ZShjb2RlYywgbmlkLCBBQ19QV1JTVF9EMCkpIHsKIAkJc25k
X2hkYV9jb2RlY193cml0ZShjb2RlYywgbmlkLCAwLCBBQ19WRVJCX1NFVF9QT1dFUl9TVEFURSwK
IAkJCQkgICAgQUNfUFdSU1RfRDApOwo=

--_004_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--_004_d7aba6970fbd48f2b32e2bc6d838ab20TPEMBX01compalcom_--

