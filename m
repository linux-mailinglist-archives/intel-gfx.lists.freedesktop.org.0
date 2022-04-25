Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA4F50EB49
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 23:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1E010E5E5;
	Mon, 25 Apr 2022 21:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DA910E5E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 21:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650921910; x=1682457910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=P4TZgU0oJfGdcgc1W+7LH1Eag3t20GUrM5Wmt3gMChY=;
 b=l9TBI2zMXo69hXJwt+DS0ybbpL52I5YQmA+klgT0LBiQcmAwnedoihsD
 /vCtxmAYvVIJIRAvPhA5HNMGP2m6Wm7yGN0VIFs5dXYwAwXliSH1pGUqs
 gFTDM/BNkUgQHa476pspGm3jlh/GuhcW6nOWF5biGBGOmcuWLuXOT851Y
 lIg2KbXAkIIWdceFKuw2O/cp1D22Pnp/iHNfJR3NwTs+Eng5QtOESlmT4
 x6kwCUxGzOHJY8yKtmZmQfh4rlpOps0v1kgZNgl9V+2rheHCSaa5g5sfc
 ae7Kopu8tp2es2Jth82KQb39rsoW9r/Tv5SH/iS7ttJ5mV0UPMRRU+YG3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="325855533"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; 
 d="jpg'145?scan'145,208,217,145";a="325855533"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 14:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; 
 d="jpg'145?scan'145,208,217,145";a="564262884"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 25 Apr 2022 14:25:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 14:25:08 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Mon, 25 Apr 2022 14:25:08 -0700
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Zhang, Dingchen (David)" <Dingchen.Zhang@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: False-positive of CI issue w/ AMDGPU patch set
Thread-Index: AQHYWOD5GSmgX3OMYkO52XyW8YHuEq0BFZ0w
Date: Mon, 25 Apr 2022 21:25:08 +0000
Message-ID: <c96cdcbd2aa849eeb2d8d7fd1a8fb33d@intel.com>
References: <BN9PR12MB51451DD500285CEAF5ECEF988DF89@BN9PR12MB5145.namprd12.prod.outlook.com>
In-Reply-To: <BN9PR12MB51451DD500285CEAF5ECEF988DF89@BN9PR12MB5145.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-Mentions: petri.latvala@intel.com
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
msip_labels: MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Enabled=True;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SetDate=2022-04-25T20:16:22.408Z;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Name=AMD
 Official Use
 Only; MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_ContentBits=0;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Method=Standard; 
x-originating-ip: [10.22.254.132]
Content-Type: multipart/related;
 boundary="_004_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_";
 type="multipart/alternative"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] False-positive of CI issue w/ AMDGPU patch set
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
Cc: "Pillai, Aurabindo" <Aurabindo.Pillai@amd.com>, "Siqueira,
 Rodrigo" <Rodrigo.Siqueira@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_004_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_
Content-Type: multipart/alternative;
	boundary="_000_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_"

--_000_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am not sure if I can take any action here. @Latvala, Petri<mailto:petri.l=
atvala@intel.com> Any inputs?

Lakshmi.

From: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com>
Sent: Monday, April 25, 2022 1:16 PM
To: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com>; Pillai, Aurabindo <Aurabi=
ndo.Pillai@amd.com>
Subject: False-positive of CI issue w/ AMDGPU patch set


[AMD Official Use Only]

Hi Lakshminarayana,

Could you help clear the CI pipeline issue of below patch w/ the ARMHF fail=
ure, which is a false-positive that is uncorrelated to the amdgpu patch set=
?
https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071
[Image removed by sender.]<https://gitlab.freedesktop.org/gfx-ci/igt-ci-tag=
s/-/pipelines/569071>

Pipeline * gfx-ci / igt-ci-tags<https://gitlab.freedesktop.org/gfx-ci/igt-c=
i-tags/-/pipelines/569071>
CI tags for IGT GPU tools. WARNING: This repo's master branch will not be u=
pdated. Use https://gitlab.freedesktop.org/drm/igt-gpu-tools for this purpo=
se.
gitlab.freedesktop.org


https://patchwork.freedesktop.org/series/102886/

Thanks
David

--_000_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"Segoe UI Light";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am not sure if I can take any action here. <a id=
=3D"OWAAM57EF498B3D784C4BA5D0D08AE4B9E703" href=3D"mailto:petri.latvala@int=
el.com">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif;text-decoration:n=
one">@Latvala, Petri</span></a> Any inputs?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lakshmi.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Zhang, Dingchen (David) &lt;Dingchen.Zh=
ang@amd.com&gt;
<br>
<b>Sent:</b> Monday, April 25, 2022 1:16 PM<br>
<b>To:</b> Vudum, Lakshminarayana &lt;lakshminarayana.vudum@intel.com&gt;<b=
r>
<b>Cc:</b> Siqueira, Rodrigo &lt;Rodrigo.Siqueira@amd.com&gt;; Pillai, Aura=
bindo &lt;Aurabindo.Pillai@amd.com&gt;<br>
<b>Subject:</b> False-positive of CI issue w/ AMDGPU patch set<o:p></o:p></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:5.0pt"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:blue">[AMD Official Use Only]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi&nbsp=
;Lakshminarayana,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Could y=
ou help clear the CI pipeline issue of below patch w/ the ARMHF failure, wh=
ich is a false-positive that is uncorrelated to the amdgpu patch set?<o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><a href=
=3D"https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071">h=
ttps://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071</a><o:p=
></o:p></span></p>
</div>
<div>
<div style=3D"margin-top:12.0pt;margin-bottom:12.0pt;min-width: 424px" id=
=3D"LPBorder_GTaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ3QtY2kt=
dGFncy8tL3BpcGVsaW5lcy81NjkwNzE.">
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0" width=3D"100=
%" style=3D"width:100.0%;border:solid #C8C8C8 1.0pt">
<tbody>
<tr>
<td valign=3D"top" style=3D"border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt">
<div style=3D"margin-right:9.0pt;overflow:hidden" id=3D"LPImageContainer535=
359">
<p class=3D"MsoNormal"><a href=3D"https://gitlab.freedesktop.org/gfx-ci/igt=
-ci-tags/-/pipelines/569071" target=3D"_blank"><span style=3D"border:solid =
windowtext 1.0pt;padding:0in;text-decoration:none"><img border=3D"0" width=
=3D"160" height=3D"160" style=3D"width:1.6666in;height:1.6666in" id=3D"LPTh=
umbnailImageId535359" src=3D"cid:~WRD0001.jpg" alt=3D"Image removed by send=
er."></span></a><o:p></o:p></p>
</div>
</td>
<td width=3D"100%" valign=3D"top" style=3D"width:100.0%;border:none;padding=
:9.0pt 27.0pt 9.0pt 9.0pt">
<div style=3D"margin-right:6.0pt;margin-bottom:9.0pt" id=3D"LPTitle535359">
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;font-family:&quot;Se=
goe UI Light&quot;,sans-serif"><a href=3D"https://gitlab.freedesktop.org/gf=
x-ci/igt-ci-tags/-/pipelines/569071" target=3D"_blank"><span style=3D"text-=
decoration:none">Pipeline &middot; gfx-ci / igt-ci-tags</span></a><o:p></o:=
p></span></p>
</div>
<div style=3D"margin-right:6.0pt;margin-bottom:9.0pt;max-height: 100px;over=
flow:hidden" id=3D"LPDescription535359">
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#666666">CI tags for IGT GPU tools. WARNING: =
This repo's master branch will not be updated. Use https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools for this purpose.<o:p></o:p></span></p>
</div>
<div id=3D"LPMetadata535359">
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#A6A6A6">gitlab.freedesktop.org<o:p></o:p></s=
pan></p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><a href=
=3D"https://patchwork.freedesktop.org/series/102886/">https://patchwork.fre=
edesktop.org/series/102886/</a><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">David&n=
bsp;<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_--

--_004_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_
Content-Type: image/jpeg; name="~WRD0001.jpg"
Content-Description: ~WRD0001.jpg
Content-Disposition: inline; filename="~WRD0001.jpg"; size=823;
	creation-date="Mon, 25 Apr 2022 20:33:13 GMT";
	modification-date="Mon, 25 Apr 2022 20:33:13 GMT"
Content-ID: <~WRD0001.jpg>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK
KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigAooooAKKKKACiiigD//2Q==

--_004_c96cdcbd2aa849eeb2d8d7fd1a8fb33dintelcom_--
