Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0269A3097BB
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 19:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704626E139;
	Sat, 30 Jan 2021 18:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42EA66E139
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 18:58:14 +0000 (UTC)
IronPort-SDR: JBVu4FGXAt6MdEyN+zu8sgq/cJMoX791ZgOaBFBe5u6THsjUmEpiR2i1XJ1yro6DZf+H7WgFX9
 /mwqSYS5/tOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9880"; a="265377794"
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; 
 d="scan'208,217";a="265377794"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2021 10:58:13 -0800
IronPort-SDR: lnF0Z9bbXHIeg0J7MTaRDC57Iu70pousY+nK/mf4Rffw/kCnubfJxe9iycqH/10CGp4o8ufFpX
 wpg2ikeuB/tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; 
 d="scan'208,217";a="412238001"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jan 2021 10:58:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 Jan 2021 18:58:11 +0000
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.002;
 Sat, 30 Jan 2021 10:58:10 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: DG1 Guc HuC and ADL-S DMC
Thread-Index: Adb3OcFtLMG3hETlQseHlwCN+/K7aw==
Date: Sat, 30 Jan 2021 18:58:10 +0000
Message-ID: <aeeb97fd4329412cb16b2338ae1bdc08@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: [Intel-gfx] DG1 Guc HuC and ADL-S DMC
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
Cc: "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: multipart/mixed; boundary="===============1663153693=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1663153693==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_aeeb97fd4329412cb16b2338ae1bdc08intelcom_"

--_000_aeeb97fd4329412cb16b2338ae1bdc08intelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Adding Pull Request for CI to grab these new updates:

The following changes since commit 05789708b79b38eb0f1a20d8449b4eb56d39b39f=
:

  brcm: Link RPi4's WiFi firmware with DMI machine name. (2021-01-19 07:42:=
43 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware DG1-guc-huc-ADLS-dmc

for you to fetch changes up to 348d8a9740930e7b8bd83a36baba40c5cfc3f8be:

  i915: Add DMC v2.01 for ADL-S (2021-01-29 11:43:12 -0800)

----------------------------------------------------------------
Anusha Srivatsa (3):
      i915: Add GuC v49.0.1 for DG1
      i915: Add HuC v7.7.1 for DG1
      i915: Add DMC v2.01 for ADL-S

WHENCE                    |   9 +++++++++
i915/adls_dmc_ver2_01.bin | Bin 0 -> 18704 bytes
i915/dg1_guc_49.0.1.bin   | Bin 0 -> 311872 bytes
i915/dg1_huc_7.7.1.bin    | Bin 0 -> 582400 bytes
4 files changed, 9 insertions(+)
create mode 100644 i915/adls_dmc_ver2_01.bin
create mode 100644 i915/dg1_guc_49.0.1.bin
create mode 100644 i915/dg1_huc_7.7.1.bin


Thanks,
Anusha

--_000_aeeb97fd4329412cb16b2338ae1bdc08intelcom_
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
<p class=3D"MsoNormal">Adding Pull Request for CI to grab these new updates=
:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following changes since commit 05789708b79b38eb0=
f1a20d8449b4eb56d39b39f:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; brcm: Link RPi4's WiFi firmware with DMI mach=
ine name. (2021-01-19 07:42:43 -0500)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">are available in the Git repository at:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; git://anongit.freedesktop.org/drm/drm-firmwar=
e DG1-guc-huc-ADLS-dmc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for you to fetch changes up to 348d8a9740930e7b8bd83=
a36baba40c5cfc3f8be:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; i915: Add DMC v2.01 for ADL-S (2021-01-29 11:=
43:12 -0800)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha Srivatsa (3):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add GuC v49.0.1=
 for DG1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add HuC v7.7.1 =
for DG1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add DMC v2.01 f=
or ADL-S<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp=
;&nbsp; 9 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">i915/adls_dmc_ver2_01.bin | Bin 0 -&gt; 18704 bytes<=
o:p></o:p></p>
<p class=3D"MsoNormal">i915/dg1_guc_49.0.1.bin&nbsp;&nbsp; | Bin 0 -&gt; 31=
1872 bytes<o:p></o:p></p>
<p class=3D"MsoNormal">i915/dg1_huc_7.7.1.bin&nbsp;&nbsp;&nbsp; | Bin 0 -&g=
t; 582400 bytes<o:p></o:p></p>
<p class=3D"MsoNormal">4 files changed, 9 insertions(&#43;)<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/adls_dmc_ver2_01.bin<o:p></o=
:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/dg1_guc_49.0.1.bin<o:p></o:p=
></p>
<p class=3D"MsoNormal">create mode 100644 i915/dg1_huc_7.7.1.bin<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha<o:p></o:p></p>
</div>
</body>
</html>

--_000_aeeb97fd4329412cb16b2338ae1bdc08intelcom_--

--===============1663153693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1663153693==--
