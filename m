Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BE33D93C2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 19:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0597A6E04E;
	Wed, 28 Jul 2021 17:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F436E04E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 17:01:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212434533"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; 
 d="scan'208,217";a="212434533"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 10:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; 
 d="scan'208,217";a="663552629"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jul 2021 10:01:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 28 Jul 2021 10:01:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 28 Jul 2021 10:01:14 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Wed, 28 Jul 2021 10:01:14 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915  DMC  Updates - TGL:v2.12 and RKL v2.03
Thread-Index: AdeD0ddoP2AWrs6LS1Kzx5z+lW0M4Q==
Date: Wed, 28 Jul 2021 17:01:13 +0000
Message-ID: <501e28bddabb4214a3c0c9f7fa8f320a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: [Intel-gfx] i915  DMC  Updates - TGL:v2.12 and RKL v2.03
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
Cc: Kyle McMartin <kyle@mcmartin.ca>, Josh Boyer <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ben@decadent.org.uk" <ben@decadent.org.uk>
Content-Type: multipart/mixed; boundary="===============0286102453=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0286102453==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_501e28bddabb4214a3c0c9f7fa8f320aintelcom_"

--_000_501e28bddabb4214a3c0c9f7fa8f320aintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Kindly pull these updates from i915.

The following changes since commit 168452ee695b5edb9deb641059bc110b9c5e8fc7=
:

  Merge tag 'iwlwifi-fw-2021-07-19' of git://git.kernel.org/pub/scm/linux/k=
ernel/git/iwlwifi/linux-firmware into main (2021-07-19 14:35:47 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware tgl_rkl_dmc_updates

for you to fetch changes up to 6c9fd94d41310443ea4ff782ce1545e49e74221c:

  i915: Add v2.03 DMC for RKL (2021-07-28 09:45:27 -0700)

----------------------------------------------------------------
Anusha Srivatsa (2):
      i915: Add v2.12 DMC for TGL
     i915: Add v2.03 DMC for RKL

WHENCE                   |   6 ++++++
i915/rkl_dmc_ver2_03.bin | Bin 0 -> 18476 bytes
i915/tgl_dmc_ver2_12.bin | Bin 0 -> 19760 bytes
3 files changed, 6 insertions(+)
create mode 100644 i915/rkl_dmc_ver2_03.bin
create mode 100644 i915/tgl_dmc_ver2_12.bin

Thanks,
Anusha

--_000_501e28bddabb4214a3c0c9f7fa8f320aintelcom_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Kindly pull these updates from i915.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following changes since commit 168452ee695b5edb9=
deb641059bc110b9c5e8fc7:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; Merge tag 'iwlwifi-fw-2021-07-19' of git://gi=
t.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware into main (202=
1-07-19 14:35:47 -0400)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">are available in the Git repository at:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; git://anongit.freedesktop.org/drm/drm-firmwar=
e tgl_rkl_dmc_updates<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for you to fetch changes up to 6c9fd94d41310443ea4ff=
782ce1545e49e74221c:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; i915: Add v2.03 DMC for RKL (2021-07-28 09:45=
:27 -0700)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha Srivatsa (2):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915: Add v2.12 DMC f=
or TGL<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i915: Add v2.03 DMC fo=
r RKL<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp=
; 6 &#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">i915/rkl_dmc_ver2_03.bin | Bin 0 -&gt; 18476 bytes<o=
:p></o:p></p>
<p class=3D"MsoNormal">i915/tgl_dmc_ver2_12.bin | Bin 0 -&gt; 19760 bytes<o=
:p></o:p></p>
<p class=3D"MsoNormal">3 files changed, 6 insertions(&#43;)<o:p></o:p></p>
<p class=3D"MsoNormal">create mode 100644 i915/rkl_dmc_ver2_03.bin<o:p></o:=
p></p>
<p class=3D"MsoNormal">create mode 100644 i915/tgl_dmc_ver2_12.bin<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Anusha<o:p></o:p></p>
</div>
</body>
</html>

--_000_501e28bddabb4214a3c0c9f7fa8f320aintelcom_--

--===============0286102453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0286102453==--
