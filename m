Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 774965101DD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 17:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE6610E750;
	Tue, 26 Apr 2022 15:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1FE10E750
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 15:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650986758; x=1682522758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=5mfCkmNYgbzBO06NdlRGKpWj63xcTGm/Ury9V026n5s=;
 b=Gf2ED1x0fVNPMQFEERfD4acOiucfBd2QHnY9FJyoZFUlSPc+fTbMe92l
 OC4vsJfGvGUkySemsBzsS0kgE08dE1kvVmHpZFN2mLTyJn0XeECjNDade
 lxr1ItNOiK9AT2qJ0L1b42gG7VW2tRc8bdqIZ+QDkB3jS5U9mQLXW5reb
 W9c/uADXlN+xpOfIUSpV2OZfHqvpgWRDPQ/cIAbe/60Usoq5hC3TBC3dP
 M6D2s5y4j5gzrOZd8Awsqcj4AloDgDFypJWt7KuWhDIJBpaCoElxZGq58
 qkplVo2hJPlpUnhwJWyImpLGg8lee7QDo4RMESi8WOw3ouwJ9aMQD/HY8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="265417381"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; 
 d="jpg'145?png'145,150?scan'145,150,208,217,150,145";a="265417381"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 08:25:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; 
 d="jpg'145?png'145,150?scan'145,150,208,217,150,145";a="532709669"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 26 Apr 2022 08:25:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 08:25:56 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 26 Apr 2022 08:25:56 -0700
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Zhang, Dingchen (David)" <Dingchen.Zhang@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: False-positive of CI issue w/ AMDGPU patch set
Thread-Index: AQHYWOD5GSmgX3OMYkO52XyW8YHuEq0BFZ0wgAEdsAaAAB0eEA==
Date: Tue, 26 Apr 2022 15:25:56 +0000
Message-ID: <ba541bbcc44344749aabc115fc8a325d@intel.com>
References: <BN9PR12MB51451DD500285CEAF5ECEF988DF89@BN9PR12MB5145.namprd12.prod.outlook.com>
 <c96cdcbd2aa849eeb2d8d7fd1a8fb33d@intel.com>
 <BN9PR12MB5145B95C2728A916C01A32528DFB9@BN9PR12MB5145.namprd12.prod.outlook.com>
In-Reply-To: <BN9PR12MB5145B95C2728A916C01A32528DFB9@BN9PR12MB5145.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
msip_labels: MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Enabled=True;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SetDate=2022-04-26T13:37:36.592Z;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Name=AMD
 Official Use
 Only; MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_ContentBits=0;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Method=Standard; 
x-originating-ip: [10.22.254.132]
Content-Type: multipart/related;
 boundary="_005_ba541bbcc44344749aabc115fc8a325dintelcom_";
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

--_005_ba541bbcc44344749aabc115fc8a325dintelcom_
Content-Type: multipart/alternative;
	boundary="_000_ba541bbcc44344749aabc115fc8a325dintelcom_"

--_000_ba541bbcc44344749aabc115fc8a325dintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have re-opened https://gitlab.freedesktop.org/drm/intel/-/issues/5302
igt@i915_module_load@reload-with-fault-injection - dmesg-warn - WARNING: .*=
 at drivers/gpu/drm/i915/i915_vma.c:\d+ i915_ggtt_pin

Other sounds is not totally new, I have seen similar signature few months a=
go on a different test but to me this sounds like a sporadic issue. So file=
d a new issue
https://gitlab.freedesktop.org/drm/intel/-/issues/5844
igt@kms_fbcon_fbt@psr-suspend - incomplete - pstore logs - is trying to acq=
uire lock at: down_trylock, but task is already holding lock at: raw_spin_r=
q_lock_nested

Anyways, re-reporting doesn't really help as we will get results from rev5.

Lakshmi.
From: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com>
Sent: Tuesday, April 26, 2022 6:38 AM
To: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>; intel-gfx@lis=
ts.freedesktop.org; Latvala, Petri <petri.latvala@intel.com>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com>; Pillai, Aurabindo <Aurabi=
ndo.Pillai@amd.com>
Subject: Re: False-positive of CI issue w/ AMDGPU patch set


[AMD Official Use Only]

Hi Lakshmi,

Thanks for your reply and could you please clear another false-positive CI =
issue below? (link https://patchwork.freedesktop.org/series/102886/). The p=
ossible regression is not correlated to the amdgpu patch set.

[cid:image001.png@01D85947.3E2D5CE0]

regards
David
________________________________
From: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com<mailto:lakshm=
inarayana.vudum@intel.com>>
Sent: Monday, April 25, 2022 5:25 PM
To: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com<mailto:Dingchen.Zhang@a=
md.com>>; intel-gfx@lists.freedesktop.org<mailto:intel-gfx@lists.freedeskto=
p.org> <intel-gfx@lists.freedesktop.org<mailto:intel-gfx@lists.freedesktop.=
org>>; Latvala, Petri <petri.latvala@intel.com<mailto:petri.latvala@intel.c=
om>>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com<mailto:Rodrigo.Siqueira@amd=
.com>>; Pillai, Aurabindo <Aurabindo.Pillai@amd.com<mailto:Aurabindo.Pillai=
@amd.com>>
Subject: RE: False-positive of CI issue w/ AMDGPU patch set


[AMD Official Use Only]


I am not sure if I can take any action here. @Latvala, Petri<mailto:petri.l=
atvala@intel.com> Any inputs?



Lakshmi.



From: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com<mailto:Dingchen.Zhang=
@amd.com>>
Sent: Monday, April 25, 2022 1:16 PM
To: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com<mailto:lakshmin=
arayana.vudum@intel.com>>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com<mailto:Rodrigo.Siqueira@amd=
.com>>; Pillai, Aurabindo <Aurabindo.Pillai@amd.com<mailto:Aurabindo.Pillai=
@amd.com>>
Subject: False-positive of CI issue w/ AMDGPU patch set



[AMD Official Use Only]



Hi Lakshminarayana,



Could you help clear the CI pipeline issue of below patch w/ the ARMHF fail=
ure, which is a false-positive that is uncorrelated to the amdgpu patch set=
?

https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071<https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.freede=
sktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpipelines%2F569071&data=3D05%7C01%7C=
Dingchen.Zhang%40amd.com%7C6d2f17cdd4a94409438908da27021633%7C3dd8961fe4884=
e608e11a82d994e183d%7C0%7C0%7C637865187176641298%7CUnknown%7CTWFpbGZsb3d8ey=
JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%=
7C%7C&sdata=3D%2FosUCKthERnkC1UKo1f30wFjzDXPnx49CigQ49r13Ks%3D&reserved=3D0=
>

[Image removed by sender.]<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpip=
elines%2F569071&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C6d2f17cdd4a9440=
9438908da27021633%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637865187176=
641298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6=
Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D%2FosUCKthERnkC1UKo1f30wFjzD=
XPnx49CigQ49r13Ks%3D&reserved=3D0>


Pipeline * gfx-ci / igt-ci-tags<https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%=
2Fpipelines%2F569071&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C6d2f17cdd4=
a94409438908da27021633%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6378651=
87176641298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D%2FosUCKthERnkC1UKo1f30=
wFjzDXPnx49CigQ49r13Ks%3D&reserved=3D0>

CI tags for IGT GPU tools. WARNING: This repo's master branch will not be u=
pdated. Use https://gitlab.freedesktop.org/drm/igt-gpu-tools for this purpo=
se.

gitlab.freedesktop.org




https://patchwork.freedesktop.org/series/102886/<https://nam11.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fserie=
s%2F102886%2F&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C6d2f17cdd4a944094=
38908da27021633%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63786518717664=
1298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D%2BDpEt1mqHO94oUE%2Fj4H2fGN85n=
WLcOzLcM8DtHpYdyw%3D&reserved=3D0>



Thanks

David

--_000_ba541bbcc44344749aabc115fc8a325dintelcom_
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
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle25
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
<p class=3D"MsoNormal">I have re-opened <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/-/issues/5302">
https://gitlab.freedesktop.org/drm/intel/-/issues/5302</a><o:p></o:p></p>
<p class=3D"MsoNormal">igt@i915_module_load@reload-with-fault-injection - d=
mesg-warn - WARNING: .* at drivers/gpu/drm/i915/i915_vma.c:\d&#43; i915_ggt=
t_pin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Other sounds is not totally new, I have seen similar=
 signature few months ago on a different test but to me this sounds like a =
sporadic issue. So filed a new issue<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://gitlab.freedesktop.org/drm/intel/=
-/issues/5844">https://gitlab.freedesktop.org/drm/intel/-/issues/5844</a><o=
:p></o:p></p>
<p class=3D"MsoNormal">igt@kms_fbcon_fbt@psr-suspend - incomplete - pstore =
logs - is trying to acquire lock at: down_trylock, but task is already hold=
ing lock at: raw_spin_rq_lock_nested<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyways, re-reporting doesn&#8217;t really help as w=
e will get results from rev5.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lakshmi.<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Zhang, Dingchen (David) &lt;Dingchen.Zh=
ang@amd.com&gt;
<br>
<b>Sent:</b> Tuesday, April 26, 2022 6:38 AM<br>
<b>To:</b> Vudum, Lakshminarayana &lt;lakshminarayana.vudum@intel.com&gt;; =
intel-gfx@lists.freedesktop.org; Latvala, Petri &lt;petri.latvala@intel.com=
&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;Rodrigo.Siqueira@amd.com&gt;; Pillai, Aura=
bindo &lt;Aurabindo.Pillai@amd.com&gt;<br>
<b>Subject:</b> Re: False-positive of CI issue w/ AMDGPU patch set<o:p></o:=
p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:5.0pt"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:blue">[AMD Official Use Only]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi Laks=
hmi,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks =
for your reply and could you please clear another false-positive CI issue b=
elow? (link&nbsp;<a href=3D"https://patchwork.freedesktop.org/series/102886=
/">https://patchwork.freedesktop.org/series/102886/</a>).
 The possible regression is not correlated to the amdgpu patch set.<br>
<br>
<img border=3D"0" width=3D"682" height=3D"300" style=3D"width:7.1041in;heig=
ht:3.125in" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01D85947.3E2D5CE=
0"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">regards=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">David<o=
:p></o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Vudum, Lakshminarayana &lt;<a href=3D"mailto:lakshm=
inarayana.vudum@intel.com">lakshminarayana.vudum@intel.com</a>&gt;<br>
<b>Sent:</b> Monday, April 25, 2022 5:25 PM<br>
<b>To:</b> Zhang, Dingchen (David) &lt;<a href=3D"mailto:Dingchen.Zhang@amd=
.com">Dingchen.Zhang@amd.com</a>&gt;;
<a href=3D"mailto:intel-gfx@lists.freedesktop.org">intel-gfx@lists.freedesk=
top.org</a> &lt;<a href=3D"mailto:intel-gfx@lists.freedesktop.org">intel-gf=
x@lists.freedesktop.org</a>&gt;; Latvala, Petri &lt;<a href=3D"mailto:petri=
.latvala@intel.com">petri.latvala@intel.com</a>&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;<a href=3D"mailto:Rodrigo.Siqueira@amd.com=
">Rodrigo.Siqueira@amd.com</a>&gt;; Pillai, Aurabindo &lt;<a href=3D"mailto=
:Aurabindo.Pillai@amd.com">Aurabindo.Pillai@amd.com</a>&gt;<br>
<b>Subject:</b> RE: False-positive of CI issue w/ AMDGPU patch set</span> <=
o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<p style=3D"margin:5.0pt"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:blue">[AMD Official Use Only]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"xmsonormal">I am not sure if I can take any action here. <a id=
=3D"OWAAM57EF498B3D784C4BA5D0D08AE4B9E703" href=3D"mailto:petri.latvala@int=
el.com">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif;text-decoration:n=
one">@Latvala, Petri</span></a> Any inputs?<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Lakshmi.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xmsonormal"><b>From:</b> Zhang, Dingchen (David) &lt;<a href=3D=
"mailto:Dingchen.Zhang@amd.com">Dingchen.Zhang@amd.com</a>&gt;
<br>
<b>Sent:</b> Monday, April 25, 2022 1:16 PM<br>
<b>To:</b> Vudum, Lakshminarayana &lt;<a href=3D"mailto:lakshminarayana.vud=
um@intel.com">lakshminarayana.vudum@intel.com</a>&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;<a href=3D"mailto:Rodrigo.Siqueira@amd.com=
">Rodrigo.Siqueira@amd.com</a>&gt;; Pillai, Aurabindo &lt;<a href=3D"mailto=
:Aurabindo.Pillai@amd.com">Aurabindo.Pillai@amd.com</a>&gt;<br>
<b>Subject:</b> False-positive of CI issue w/ AMDGPU patch set<o:p></o:p></=
p>
</div>
</div>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p style=3D"margin:5.0pt"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:blue">[AMD Official Use Only]</span><o:p></o:=
p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">Hi&nbs=
p;Lakshminarayana,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp;=
</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">Could =
you help clear the CI pipeline issue of below patch w/ the ARMHF failure, w=
hich is a false-positive that is uncorrelated to the amdgpu patch set?</spa=
n><o:p></o:p></p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black"><a hre=
f=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgi=
tlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpipelines%2F569071&amp;da=
ta=3D05%7C01%7CDingchen.Zhang%40amd.com%7C6d2f17cdd4a94409438908da27021633%=
7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637865187176641298%7CUnknown%7=
CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn=
0%3D%7C3000%7C%7C%7C&amp;sdata=3D%2FosUCKthERnkC1UKo1f30wFjzDXPnx49CigQ49r1=
3Ks%3D&amp;reserved=3D0">https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/=
-/pipelines/569071</a></span><o:p></o:p></p>
</div>
<div>
<div style=3D"margin-top:12.0pt;margin-bottom:12.0pt;min-width:424px" id=3D=
"LPBorder_GTaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ3QtY2ktdGF=
ncy8tL3BpcGVsaW5lcy81NjkwNzE.">
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0" width=3D"100=
%" style=3D"width:100.0%;border:solid #C8C8C8 1.0pt">
<tbody>
<tr>
<td valign=3D"top" style=3D"border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt">
<div style=3D"margin-right:9.0pt;overflow:hidden" id=3D"LPImageContainer535=
359">
<p class=3D"xmsonormal"><a href=3D"https://nam11.safelinks.protection.outlo=
ok.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2=
F-%2Fpipelines%2F569071&amp;data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C6d2=
f17cdd4a94409438908da27021633%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637865187176641298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D%2FosUCKthER=
nkC1UKo1f30wFjzDXPnx49CigQ49r13Ks%3D&amp;reserved=3D0" target=3D"_blank"><s=
pan style=3D"border:solid windowtext 1.0pt;padding:0in;text-decoration:none=
"><img border=3D"0" width=3D"160" height=3D"160" style=3D"width:1.6666in;he=
ight:1.6666in" id=3D"LPThumbnailImageId535359" src=3D"cid:image002.jpg@01D8=
5947.3E2D5CE0" alt=3D"Image removed by sender."></span></a><o:p></o:p></p>
</div>
</td>
<td width=3D"100%" valign=3D"top" style=3D"width:100.0%;border:none;padding=
:9.0pt 27.0pt 9.0pt 9.0pt">
<div style=3D"margin-right:6.0pt;margin-bottom:9.0pt" id=3D"LPTitle535359">
<p class=3D"xmsonormal"><span style=3D"font-size:16.0pt;font-family:&quot;S=
egoe UI Light&quot;,sans-serif"><a href=3D"https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-c=
i-tags%2F-%2Fpipelines%2F569071&amp;data=3D05%7C01%7CDingchen.Zhang%40amd.c=
om%7C6d2f17cdd4a94409438908da27021633%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637865187176641298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQ=
IjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D%2Fo=
sUCKthERnkC1UKo1f30wFjzDXPnx49CigQ49r13Ks%3D&amp;reserved=3D0" target=3D"_b=
lank"><span style=3D"text-decoration:none">Pipeline
 &middot; gfx-ci / igt-ci-tags</span></a></span><o:p></o:p></p>
</div>
<div style=3D"margin-right:6.0pt;margin-bottom:9.0pt;max-height:100px;overf=
low:hidden" id=3D"LPDescription535359">
<p class=3D"xmsonormal"><span style=3D"font-size:10.5pt;font-family:&quot;S=
egoe UI&quot;,sans-serif;color:#666666">CI tags for IGT GPU tools. WARNING:=
 This repo's master branch will not be updated. Use
<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools">https://gitlab=
.freedesktop.org/drm/igt-gpu-tools</a> for this purpose.</span><o:p></o:p><=
/p>
</div>
<div id=3D"LPMetadata535359">
<p class=3D"xmsonormal"><span style=3D"font-size:10.5pt;font-family:&quot;S=
egoe UI&quot;,sans-serif;color:#A6A6A6">gitlab.freedesktop.org</span><o:p><=
/o:p></p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black"><a hre=
f=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpa=
tchwork.freedesktop.org%2Fseries%2F102886%2F&amp;data=3D05%7C01%7CDingchen.=
Zhang%40amd.com%7C6d2f17cdd4a94409438908da27021633%7C3dd8961fe4884e608e11a8=
2d994e183d%7C0%7C0%7C637865187176641298%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp=
;sdata=3D%2BDpEt1mqHO94oUE%2Fj4H2fGN85nWLcOzLcM8DtHpYdyw%3D&amp;reserved=3D=
0">https://patchwork.freedesktop.org/series/102886/</a></span><o:p></o:p></=
p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp;=
</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">Thanks=
</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;color:black">David&=
nbsp;</span><o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_ba541bbcc44344749aabc115fc8a325dintelcom_--

--_005_ba541bbcc44344749aabc115fc8a325dintelcom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=36678;
	creation-date="Tue, 26 Apr 2022 15:25:54 GMT";
	modification-date="Tue, 26 Apr 2022 15:25:54 GMT"
Content-ID: <image001.png@01D85947.3E2D5CE0>
Content-Transfer-Encoding: base64

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
8g8AgHR+Aqf6E/qJvnIIAAAAAElFTkSuQmCC

--_005_ba541bbcc44344749aabc115fc8a325dintelcom_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=823;
	creation-date="Tue, 26 Apr 2022 15:25:55 GMT";
	modification-date="Tue, 26 Apr 2022 15:25:55 GMT"
Content-ID: <image002.jpg@01D85947.3E2D5CE0>
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

--_005_ba541bbcc44344749aabc115fc8a325dintelcom_--
