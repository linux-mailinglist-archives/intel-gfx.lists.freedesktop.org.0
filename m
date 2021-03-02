Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0173329CC6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 12:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A30689E98;
	Tue,  2 Mar 2021 11:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6CA6E116
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 11:37:53 +0000 (UTC)
IronPort-SDR: cCv7jKAwbEXYAykybjii5Sf285L82FapUmgUrj9AzXsQhrCddPy+Kzv1gJP/p7HmCEPIaBIluR
 K/6mYcwz+L0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="186111391"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; 
 d="scan'208,217";a="186111391"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:37:53 -0800
IronPort-SDR: RLEc/D7EJG8n/sutvfuJWztOonnDSy+cfoAvUSEEV5qa9ejmig0EEElJ8m70/XOIMQCKh4G8kV
 fM4548qRh75Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; 
 d="scan'208,217";a="427458447"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga004.fm.intel.com with ESMTP; 02 Mar 2021 03:37:52 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 11:37:51 +0000
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.2106.002;
 Tue, 2 Mar 2021 11:37:51 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Public i915 CI shardruns are disabled
Thread-Index: AdcPWHkSgYTOIBqtStq84U3dnNSQvw==
Date: Tue, 2 Mar 2021 11:37:51 +0000
Message-ID: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: [Intel-gfx] Public i915 CI shardruns are disabled
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
Content-Type: multipart/mixed; boundary="===============0379946798=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0379946798==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e12dfaac0aa242f4a10d8c5b920a98dbintelcom_"

--_000_e12dfaac0aa242f4a10d8c5b920a98dbintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

The linux i915 CI shardruns have been disabled. This is due to the unfortun=
ate
filesystem-corrupting bug first seen in linux-next 20210215, which now has
been merged to linus 5.12-rc1 and further on to DRM-Tip, first instance see=
n
in CI_DRM_9818. Last changes coming in were:

fb3b93df7979 drm-tip: 2021y-03m-01d-09h-36m-57s UTC integration manifest
3b3c4086295b drm-tip: 2021y-03m-01d-08h-49m-06s UTC integration manifest
fe07bfda2fb9 Linux 5.12-rc1

More information can be seen at:
https://phoronix.com/scan.php?page=3Dnews_item&px=3DLinux-5.12-Early-Buggy-=
Issue

I've seen this bug happen regularly with (but not limited to) IGT test:
igt@gem_tiled_swapping@non-threaded

The range for bisection is linux-next 20210215 to 20210129 because the kern=
els
in-between taint the kernel and our i915 testing was not done. Hitting the =
bug
corrupts the underlying filesystem very thoroughly, wiping out large amount=
 of
data from the beginning of the partition which leaves fsck sad with thousan=
ds of
items lost. Bisection of the IGT testlist was done with two root filesystem=
s, where
testable kernel booted from 2. partition, and copy of the 2. partition was =
stored
on 1. partition and could be restored at will.

I'll continue bisecting this bug on the linux-next tree again. If someone h=
as more
information where this issue originates from, help would be appreciated.

Regards,

Tomi Sarvela

--
Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo


--_000_e12dfaac0aa242f4a10d8c5b920a98dbintelcom_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The linux i915 CI shardruns hav=
e been disabled. This is due to the unfortunate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">filesystem-corrupting bug first=
 seen in linux-next 20210215, which now has<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">been merged to linus 5.12-rc1 a=
nd further on to DRM-Tip, first instance seen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in CI_DRM_9818. Last changes co=
ming in were:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">fb3b93df7979 drm-tip: 2021y-03m=
-01d-09h-36m-57s UTC integration manifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3b3c4086295b drm-tip: 2021y-03m=
-01d-08h-49m-06s UTC integration manifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">fe07bfda2fb9 Linux 5.12-rc1<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">More information can be seen at=
:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://phoronix.com=
/scan.php?page=3Dnews_item&amp;px=3DLinux-5.12-Early-Buggy-Issue">https://p=
horonix.com/scan.php?page=3Dnews_item&amp;px=3DLinux-5.12-Early-Buggy-Issue=
</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve seen this bug happen=
 regularly with (but not limited to) IGT test:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">igt@gem_tiled_swapping@non-thre=
aded<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The range for bisection is linu=
x-next 20210215 to 20210129 because the kernels
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in-between taint the kernel and=
 our i915 testing was not done. Hitting the bug
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">corrupts the underlying filesys=
tem very thoroughly, wiping out large amount of
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">data from the beginning of the =
partition which leaves fsck sad with thousands of<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">items lost. Bisection of the IG=
T testlist was done with two root filesystems, where<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">testable kernel booted from 2. =
partition, and copy of the 2. partition was stored<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">on 1. partition and could be re=
stored at will.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ll continue bisecting t=
his bug on the linux-next tree again. If someone has more<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">information where this issue or=
iginates from, help would be appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tomi Sarvela<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
I">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IE" style=3D"font-size:9.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:black;background:white;mso-fareast=
-language:EN-IE">Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 =
Espoo</span><span lang=3D"EN-IE" style=3D"mso-fareast-language:EN-IE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_e12dfaac0aa242f4a10d8c5b920a98dbintelcom_--

--===============0379946798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0379946798==--
