Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD11B2866
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A646F487;
	Fri, 13 Sep 2019 22:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F2D6F487
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:30:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; 
 d="scan'208,217";a="185244908"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2019 15:30:11 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 15:29:22 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.9]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.218]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 15:29:21 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 firmware updates (CMl- GuC,HuC; TGL-DMC,ICL-DMC, HuC
 Updates-SKL,BXT,KBL,GLK,ICL) 
Thread-Index: AdVqgrAbRnXsxWD5QvGKyb6HslgvBg==
Date: Fri, 13 Sep 2019 22:29:21 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734815CF42@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.137]
MIME-Version: 1.0
Subject: [Intel-gfx] i915 firmware updates (CMl- GuC,HuC;
 TGL-DMC,ICL-DMC, HuC Updates-SKL,BXT,KBL,GLK,ICL)
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
Cc: "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kyle@kernel.org" <kyle@kernel.org>,
 "ben@decadent.org.uk" <ben@decadent.org.uk>
Content-Type: multipart/mixed; boundary="===============0973532433=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0973532433==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B0734815CF42ORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B0734815CF42ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
Kyle, Josh,Ben

Ignore the previous PR and kindly consider this one. It has another new upd=
ate and is the latest one-

The following changes since commit 6c6918ad8ae0dfb2cb591484eba525409980c16f=
:

  linux-firmware: Update firmware file for Intel Bluetooth AX201 (2019-09-0=
9 04:22:42 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware cml_tgl-icl-dmc_huc_update=
s

for you to fetch changes up to 3ea84e52306e7b78cc6d727d9a41c8449146d765:

  drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-13 14:48:47 -07=
00)

----------------------------------------------------------------
Anusha Srivatsa (9):
      drm/i915/firmware: Add v1.09 of DMC for ICL
      drm/i915/firmware: Add v2.04 of DMC for TGL
      drm/i915/firmware: Add v33 of GuC for CML
      drm/i915/firmware: Add v2.0.0 of HuC for Skylake
      drm/i915/firmware: Add v4.0.0 of HuC for Kabylake
      drm/i915/firmware: Add v2.0.0 of HuC for Broxton
      drm/i915/firmware: Add v4.0.0 of HuC for Geminilake
      drm/i915/firmware: Add v4.0.0 of HuC for Cometlake
      drm/i915/firmware: Add v9.0.0 of HuC for Icelake

 WHENCE                   |  28 ++++++++++++++++++++++++++++
 i915/bxt_huc_2.0.0.bin   | Bin 0 -> 149824 bytes
 i915/cml_guc_33.0.0.bin  | Bin 0 -> 182912 bytes
 i915/cml_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/glk_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/icl_dmc_ver1_09.bin | Bin 0 -> 25952 bytes
 i915/icl_huc_9.0.0.bin   | Bin 0 -> 498880 bytes
 i915/kbl_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/skl_huc_2.0.0.bin   | Bin 0 -> 136320 bytes
 i915/tgl_dmc_ver2_04.bin | Bin 0 -> 18436 bytes
 10 files changed, 28 insertions(+)
 create mode 100644 i915/bxt_huc_2.0.0.bin
 create mode 100644 i915/cml_guc_33.0.0.bin
 create mode 100644 i915/cml_huc_4.0.0.bin
 create mode 100644 i915/glk_huc_4.0.0.bin
 create mode 100644 i915/icl_dmc_ver1_09.bin
 create mode 100644 i915/icl_huc_9.0.0.bin
 create mode 100644 i915/kbl_huc_4.0.0.bin
 create mode 100644 i915/skl_huc_2.0.0.bin
 create mode 100644 i915/tgl_dmc_ver2_04.bin


Thanks,
Anusha

--_000_83F5C7385F545743AD4FB2A62F75B0734815CF42ORSMSX108amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>Hi,</div>
<div>Kyle, Josh,Ben<br>
</div>
<div><br>
</div>
<div>Ignore the previous PR and kindly consider this one. It has another ne=
w update and is the latest one-</div>
<div><br>
</div>
<div>The following changes since commit 6c6918ad8ae0dfb2cb591484eba52540998=
0c16f:</div>
<br>
&nbsp; linux-firmware: Update firmware file for Intel Bluetooth AX201 (2019=
-09-09 04:22:42 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://anongit.freedesktop.org/drm/drm-firmware cml_tgl-icl-dmc_huc_u=
pdates<br>
<br>
for you to fetch changes up to 3ea84e52306e7b78cc6d727d9a41c8449146d765:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-13 14:48:4=
7 -0700)<br>
<br>
----------------------------------------------------------------<br>
Anusha Srivatsa (9):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v1.09 of DMC for ICL<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v2.04 of DMC for TGL<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for CML<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v2.0.0 of HuC for Sky=
lake<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v4.0.0 of HuC for Kab=
ylake<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v2.0.0 of HuC for Bro=
xton<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v4.0.0 of HuC for Gem=
inilake<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v4.0.0 of HuC for Com=
etlake<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v9.0.0 of HuC for Ice=
lake<br>
<br>
&nbsp;WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 28 &#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;i915/bxt_huc_2.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 149824 bytes<br>
&nbsp;i915/cml_guc_33.0.0.bin&nbsp; | Bin 0 -&gt; 182912 bytes<br>
&nbsp;i915/cml_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/glk_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/icl_dmc_ver1_09.bin | Bin 0 -&gt; 25952 bytes<br>
&nbsp;i915/icl_huc_9.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 498880 bytes<br>
&nbsp;i915/kbl_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/skl_huc_2.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 136320 bytes<br>
&nbsp;i915/tgl_dmc_ver2_04.bin | Bin 0 -&gt; 18436 bytes<br>
&nbsp;10 files changed, 28 insertions(&#43;)<br>
&nbsp;create mode 100644 i915/bxt_huc_2.0.0.bin<br>
&nbsp;create mode 100644 i915/cml_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/cml_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/glk_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/icl_dmc_ver1_09.bin<br>
&nbsp;create mode 100644 i915/icl_huc_9.0.0.bin<br>
&nbsp;create mode 100644 i915/kbl_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/skl_huc_2.0.0.bin<br>
&nbsp;create mode 100644 i915/tgl_dmc_ver2_04.bin<br>
<div><br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Anusha<br>
</div>
</div>
</body>
</html>

--_000_83F5C7385F545743AD4FB2A62F75B0734815CF42ORSMSX108amrcor_--

--===============0973532433==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0973532433==--
