Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D236C99F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 18:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5A96E0E1;
	Tue, 27 Apr 2021 16:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0B66E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 16:40:44 +0000 (UTC)
IronPort-SDR: xDPy9CZYuk6ffPigN3BFRx6kEBRxdrub8bw5NGA2Q6LtMkQWp48rlSQ6gPgCOCljG2Vrc+7Hnw
 yD0NYbeaJ01A==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="257850587"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; 
 d="scan'208,217";a="257850587"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 09:40:41 -0700
IronPort-SDR: v+GVydiPfsQSDCjLcYt5OPxxD9ESUwgcBfef4mDOYp3wgSXTbn436YwPJT04AoYU/XNwRG/ztL
 F0Nos5/xMLaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; 
 d="scan'208,217";a="454697957"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Apr 2021 09:40:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 27 Apr 2021 17:40:39 +0100
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Tue, 27 Apr 2021 09:40:38 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: PR ADL-P DMC
Thread-Index: Adc7g+V7n5//fvy/SFSy3PJHLt1vEg==
Date: Tue, 27 Apr 2021 16:40:38 +0000
Message-ID: <95ff1b7ff1f6469b9288332cfdb0ee26@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: [Intel-gfx] PR ADL-P DMC
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: multipart/mixed; boundary="===============2097938349=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2097938349==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_95ff1b7ff1f6469b9288332cfdb0ee26intelcom_"

--_000_95ff1b7ff1f6469b9288332cfdb0ee26intelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sending PR for ADL-P DMC for CI to pull the changes:

The following changes since commit fa0efeff4894e36b9c3964376f2c99fae101d147=
:

  linux-firmware: Update firmware file for Intel Bluetooth AX210 (2021-04-2=
6 07:00:56 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware adlp_firmware

for you to fetch changes up to 726645d0915c8506b491db23d3103f0027055ac5:

  i915: Add ADL-P DMC Support (2021-04-27 09:32:13 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Add ADL-P DMC Support

i915/adlp_dmc_ver2_09.bin | Bin 0 -> 44636 bytes
i915/adlp_dmc_ver2_10.bin | Bin 0 -> 44616 bytes
2 files changed, 0 insertions(+), 0 deletions(-)
create mode 100644 i915/adlp_dmc_ver2_09.bin
create mode 100644 i915/adlp_dmc_ver2_10.bin


Anusha

--_000_95ff1b7ff1f6469b9288332cfdb0ee26intelcom_
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
<p class=3D"MsoNormal">Sending PR for ADL-P DMC for CI to pull the changes:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following changes since commit fa0efeff4894e36b9=
c3964376f2c99fae101d147:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; linux-firmware: Update firmware file for Inte=
l Bluetooth AX210 (2021-04-26 07:00:56 -0400)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">are available in the Git repository at:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; git://anongit.freedesktop.org/drm/drm-firmwar=
e adlp_firmware<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for you to fetch changes up to 726645d0915c8506b491d=
b23d3103f0027055ac5:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; i915: Add ADL-P DMC Support (2021-04-27 09:32=
:13 -0700)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha Srivatsa (1):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add ADL-P DMC S=
upport<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">i915/adlp_dmc_ver2_09.bin | Bin 0 -&gt; 44636 bytes<=
o:p></o:p></p>
<p class=3D"MsoNormal">i915/adlp_dmc_ver2_10.bin | Bin 0 -&gt; 44616 bytes<=
o:p></o:p></p>
<p class=3D"MsoNormal">2 files changed, 0 insertions(&#43;), 0 deletions(-)=
<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/adlp_dmc_ver2_09.bin<o:p></o=
:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/adlp_dmc_ver2_10.bin<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anusha <o:p></o:p></p>
</div>
</body>
</html>

--_000_95ff1b7ff1f6469b9288332cfdb0ee26intelcom_--

--===============2097938349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2097938349==--
