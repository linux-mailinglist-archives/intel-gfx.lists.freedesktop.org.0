Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33AB412891
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 23:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC566E88F;
	Mon, 20 Sep 2021 21:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D756E88F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 21:57:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="221354488"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; 
 d="scan'208,217";a="221354488"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 14:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; 
 d="scan'208,217";a="511546766"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2021 14:57:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 14:57:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 14:57:01 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Mon, 20 Sep 2021 14:57:01 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kyle
 McMartin" <kyle@mcmartin.ca>, "ben@decadent.org.uk" <ben@decadent.org.uk>, 
 Josh Boyer <jwboyer@kernel.org>
Thread-Topic: i915 Updates - ADLP DMC v2.12
Thread-Index: AdeuadhvX8AM48SmRzy5AL2Oj2Itiw==
Date: Mon, 20 Sep 2021 21:57:01 +0000
Message-ID: <c5ec6f413e4940c486505b2d511d091d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: multipart/alternative;
 boundary="_000_c5ec6f413e4940c486505b2d511d091dintelcom_"
MIME-Version: 1.0
Subject: [Intel-gfx] i915 Updates - ADLP DMC v2.12
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_c5ec6f413e4940c486505b2d511d091dintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi josh, Ben, Kyle
Kindly add the below i915 changes to linux-firmware:
linux-firmware: add frimware for mediatek bluetooth chip (MT7922) (2021-09-=
13 11:35:49 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_2_12

for you to fetch changes up to 09ab718bfa2b32a2186dd8f9e39e0cc9a9df7170:

  i915: Update ADLP DMC v2.12 (2021-09-14 14:42:47 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Update ADLP DMC v2.12

WHENCE                    |   3 +++
i915/adlp_dmc_ver2_12.bin | Bin 0 -> 72104 bytes
2 files changed, 3 insertions(+)
create mode 100644 i915/adlp_dmc_ver2_12.bin

Thanks,
Anusha


--_000_c5ec6f413e4940c486505b2d511d091dintelcom_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">Hi josh=
, Ben, Kyle<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">Kindly =
add the below i915 changes to linux-firmware:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">linux-f=
irmware: add frimware for mediatek bluetooth chip (MT7922) (2021-09-13 11:3=
5:49 -0400)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">are ava=
ilable in the Git repository at:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">&nbsp; =
git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_2_12<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">for you=
 to fetch changes up to 09ab718bfa2b32a2186dd8f9e39e0cc9a9df7170:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">&nbsp; =
i915: Update ADLP DMC v2.12 (2021-09-14 14:42:47 -0700)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">-------=
---------------------------------------------------------<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">Anusha =
Srivatsa (1):<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; i915: Update ADLP DMC v2.12<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">WHENCE&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 3 &#43;&#43;&#43;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">i915/ad=
lp_dmc_ver2_12.bin | Bin 0 -&gt; 72104 bytes<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">2 files=
 changed, 3 insertions(&#43;)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">create =
mode 100644 i915/adlp_dmc_ver2_12.bin<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">Thanks,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:7.5pt;line-height:10.75pt;bac=
kground:white;word-break:break-all">
<span style=3D"font-size:10.0pt;font-family:Consolas;color:#333333">Anusha<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_c5ec6f413e4940c486505b2d511d091dintelcom_--
