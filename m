Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5392781212
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 08:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE02689FED;
	Mon,  5 Aug 2019 06:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE9B89FED
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 06:04:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 23:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,348,1559545200"; 
 d="scan'208,217";a="164555289"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 04 Aug 2019 23:04:09 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 4 Aug 2019 23:03:59 -0700
Received: from shsmsx108.ccr.corp.intel.com (10.239.4.97) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 4 Aug 2019 23:03:58 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.112]) by
 SHSMSX108.ccr.corp.intel.com ([169.254.8.163]) with mapi id 14.03.0439.000;
 Mon, 5 Aug 2019 14:03:57 +0800
From: "Yang, Dong" <dong.yang@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: patc push failed
Thread-Index: AdVLUy8ea1FZ1ClfQpapAgQLySIstg==
Date: Mon, 5 Aug 2019 06:03:56 +0000
Message-ID: <CFEFE6A4B6B19549BBA2CEC86E99FAA03619D71C@SHSMSX104.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTU4N2Q5NGUtOTMzNS00ZmFhLWFmNmQtYzM3ZTU2ZWI1YTQ4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia3RCdGE4bzc0bzBzZVlsN2p6MlN3SGtqcmp1RmhMRHZlYUkyUHBaRncxU1E1VVlMVGlhRGp6dVZrcFU1RFhDcSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: [Intel-gfx] patc push failed
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============1960326759=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1960326759==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CFEFE6A4B6B19549BBA2CEC86E99FAA03619D71CSHSMSX104ccrcor_"

--_000_CFEFE6A4B6B19549BBA2CEC86E99FAA03619D71CSHSMSX104ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have clone the drm-intel code-base, after I apply my patch locally and I =
want upstream the patch, but it report error:
fatal: unable to access 'https://anongit.freedesktop.org/git/drm-intel.git/=
': The requested URL returned error: 403

I use git clone to clone the code-base:
git clone https://anongit.freedesktop.org/git/drm-intel.git

and git push to upstream the patch.

Anybody can help to tell me what wrong?

Best Regards,
Dong


--_000_CFEFE6A4B6B19549BBA2CEC86E99FAA03619D71CSHSMSX104ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Intel Clear Light";
	panose-1:2 11 4 4 2 2 3 2 2 4;}
@font-face
	{font-family:"\601D\6E90\9ED1\4F53 CN Normal";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@\601D\6E90\9ED1\4F53 CN Normal";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Intel Clear Light",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">I have clone the drm-intel code-base, after I apply my pat=
ch locally and I want upstream the patch, but it report error:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">fatal: unable to access 'https://anongit.freedesktop.org/g=
it/drm-intel.git/': The requested URL returned error: 403<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">I use git clone to clone the code-base:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal">git clone <a href=3D"https://anongit.freedesktop.org=
/git/drm-intel.git" title=3D"drm-intel Git repository">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;co=
lor:black;background:white;text-decoration:none">https://anongit.freedeskto=
p.org/git/drm-intel.git</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">and git push to upstream the patch.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">Anybody can help to tell me what wrong?<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear Light&q=
uot;,sans-serif">Dong<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CFEFE6A4B6B19549BBA2CEC86E99FAA03619D71CSHSMSX104ccrcor_--

--===============1960326759==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1960326759==--
