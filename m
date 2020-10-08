Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AC5287C7E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 21:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C186EB03;
	Thu,  8 Oct 2020 19:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D9A6EB03
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 19:30:28 +0000 (UTC)
IronPort-SDR: /Xa5zuPMr4VHbGoUtGvrT8XR6FVvsCABNe15MfwrlGVwhXnLNks0fRd1jdWb/wYoVNrYYPDtK6
 QcHN5G6w2E/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="162756112"
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400"; 
 d="scan'208,217";a="162756112"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 12:30:27 -0700
IronPort-SDR: 58uVErVNeuWP+MvB0ltZfxLbdDNKiY6Vds7oZ8M1Zrj6KTPNlImo7affMMYrqeGHt/OmZtqjEt
 9B9H+nK2M2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400"; 
 d="scan'208,217";a="355492071"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga007.jf.intel.com with ESMTP; 08 Oct 2020 12:30:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 20:30:25 +0100
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Thu, 8 Oct 2020 12:30:24 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Szwichtenberg, Radoslaw" <radoslaw.szwichtenberg@intel.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>
Thread-Topic: PR - DG1 DMC v2.02
Thread-Index: AdadqTa/1AwvuDMoQ4Gx98jQC6DT6A==
Date: Thu, 8 Oct 2020 19:30:24 +0000
Message-ID: <72ca5462adf3498d852b992a6378418e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: [Intel-gfx] PR - DG1 DMC v2.02
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0654847265=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0654847265==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_72ca5462adf3498d852b992a6378418eintelcom_"

--_000_72ca5462adf3498d852b992a6378418eintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sending PR for DG1 DMC for our CI to install DG1 DMC.

The following changes since commit 58d41d0facca2478d3e45f6321224361519aee96=
:

  ice: Add comms package file for Intel E800 series driver (2020-10-05 08:0=
9:03 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg1_dmc_v2_02

for you to fetch changes up to a140ef3eb3746aba2c897db16e02ffb5ffa9e7a2:

  i915: Add DG1 DMC v2.02 (2020-10-08 12:13:33 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Add DG1 DMC v2.02

WHENCE                   |   2 ++
i915/dg1_dmc_ver2_02.bin | Bin 0 -> 16624 bytes
2 files changed, 2 insertions(+)
create mode 100644 i915/dg1_dmc_ver2_02.bin


Thanks,
Anusha

--_000_72ca5462adf3498d852b992a6378418eintelcom_
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
	margin-bottom:.0001pt;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Sending PR for DG1 DMC for our CI to install DG1 DMC=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following changes since commit 58d41d0facca2478d=
3e45f6321224361519aee96:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; ice: Add comms package file for Intel E800 se=
ries driver (2020-10-05 08:09:03 -0400)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">are available in the Git repository at:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; git://anongit.freedesktop.org/drm/drm-firmwar=
e dg1_dmc_v2_02<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for you to fetch changes up to a140ef3eb3746aba2c897=
db16e02ffb5ffa9e7a2:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; i915: Add DG1 DMC v2.02 (2020-10-08 12:13:33 =
-0700)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha Srivatsa (1):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add DG1 DMC v2.=
02<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp=
; 2 &#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">i915/dg1_dmc_ver2_02.bin | Bin 0 -&gt; 16624 bytes<o=
:p></o:p></p>
<p class=3D"MsoNormal">2 files changed, 2 insertions(&#43;)<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/dg1_dmc_ver2_02.bin<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha<o:p></o:p></p>
</div>
</body>
</html>

--_000_72ca5462adf3498d852b992a6378418eintelcom_--

--===============0654847265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0654847265==--
