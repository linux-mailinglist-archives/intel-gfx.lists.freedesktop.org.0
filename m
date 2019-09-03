Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23345A76E4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 00:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C41892D4;
	Tue,  3 Sep 2019 22:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A896892D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 22:24:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 15:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; 
 d="scan'208,217";a="198876244"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga001.fm.intel.com with ESMTP; 03 Sep 2019 15:24:24 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Sep 2019 15:24:24 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.9]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.75]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 15:24:24 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: PR - HuC Updates and ICL DMC v1.09
Thread-Index: AdVipgCjk2sBxV+ES2CG4lGEzuQmfA==
Date: Tue, 3 Sep 2019 22:24:23 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734814F64A@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.137]
MIME-Version: 1.0
Subject: [Intel-gfx] PR - HuC Updates and ICL DMC v1.09
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: multipart/mixed; boundary="===============1631037358=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1631037358==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B0734814F64AORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B0734814F64AORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sending PR for HUC Updates and ICl DMC.

The following changes since commit 7307a29961ad2765ebcad162da699d2497c5c3f8=
:

  brcm: Add 43455 based AP6255 NVRAM for the Minix Neo Z83-4 Mini PC (2019-=
08-27 08:04:55 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware gen9_huc_icl_dmc

for you to fetch changes up to d258974f18273e3e37b34686c3b8ecc7bb2902bc:

  drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-03 14:27:25 -07=
00)

----------------------------------------------------------------
Anusha Srivatsa (7):
      drm/i915/firmware: Add v1.09 of DMC for ICL
      drm/i915/firmware: Add v2.0.0 of HuC for Skylake
      drm/i915/firmware: Add v4.0.0 of HuC for Kabylake
      drm/i915/firmware: Add v2.0.0 of HuC for Broxton
      drm/i915/firmware: Add v4.0.0 of HuC for Geminilake
      drm/i915/firmware: Add v4.0.0 of HuC for Cometlake
      drm/i915/firmware: Add v9.0.0 of HuC for Icelake

 WHENCE                    |  22 ++++++++++++++++++++++
 i915/bxt_huc_ver2_0_0.bin | Bin 0 -> 149824 bytes
 i915/cml_huc_ver4_0_0.bin | Bin 0 -> 226048 bytes
 i915/glk_huc_ver4_0_0.bin | Bin 0 -> 226048 bytes
 i915/icl_dmc_ver1_09.bin  | Bin 0 -> 25952 bytes
 i915/icl_huc_ver9_0_0.bin | Bin 0 -> 498880 bytes
 i915/kbl_huc_ver4_0_0.bin | Bin 0 -> 226048 bytes
 i915/skl_huc_ver2_0_0.bin | Bin 0 -> 136320 bytes
 8 files changed, 22 insertions(+)
 create mode 100644 i915/bxt_huc_ver2_0_0.bin
 create mode 100644 i915/cml_huc_ver4_0_0.bin
 create mode 100644 i915/glk_huc_ver4_0_0.bin
 create mode 100644 i915/icl_dmc_ver1_09.bin
 create mode 100644 i915/icl_huc_ver9_0_0.bin
 create mode 100644 i915/kbl_huc_ver4_0_0.bin
 create mode 100644 i915/skl_huc_ver2_0_0.bin

Regards,
Anusha

--_000_83F5C7385F545743AD4FB2A62F75B0734814F64AORSMSX108amrcor_
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
<div>Sending PR for HUC Updates and ICl DMC.</div>
<div><br>
</div>
<div>The following changes since commit 7307a29961ad2765ebcad162da699d2497c=
5c3f8:<br>
<br>
&nbsp; brcm: Add 43455 based AP6255 NVRAM for the Minix Neo Z83-4 Mini PC (=
2019-08-27 08:04:55 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://anongit.freedesktop.org/drm/drm-firmware gen9_huc_icl_dmc<br>
<br>
for you to fetch changes up to d258974f18273e3e37b34686c3b8ecc7bb2902bc:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-03 14:27:2=
5 -0700)<br>
<br>
----------------------------------------------------------------<br>
Anusha Srivatsa (7):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v1.09 of DMC for ICL<=
br>
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
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 22 &#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;<br>
&nbsp;i915/bxt_huc_ver2_0_0.bin | Bin 0 -&gt; 149824 bytes<br>
&nbsp;i915/cml_huc_ver4_0_0.bin | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/glk_huc_ver4_0_0.bin | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/icl_dmc_ver1_09.bin&nbsp; | Bin 0 -&gt; 25952 bytes<br>
&nbsp;i915/icl_huc_ver9_0_0.bin | Bin 0 -&gt; 498880 bytes<br>
&nbsp;i915/kbl_huc_ver4_0_0.bin | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/skl_huc_ver2_0_0.bin | Bin 0 -&gt; 136320 bytes<br>
&nbsp;8 files changed, 22 insertions(&#43;)<br>
&nbsp;create mode 100644 i915/bxt_huc_ver2_0_0.bin<br>
&nbsp;create mode 100644 i915/cml_huc_ver4_0_0.bin<br>
&nbsp;create mode 100644 i915/glk_huc_ver4_0_0.bin<br>
&nbsp;create mode 100644 i915/icl_dmc_ver1_09.bin<br>
&nbsp;create mode 100644 i915/icl_huc_ver9_0_0.bin<br>
&nbsp;create mode 100644 i915/kbl_huc_ver4_0_0.bin<br>
&nbsp;create mode 100644 i915/skl_huc_ver2_0_0.bin<br>
</div>
<div><br>
</div>
<div>Regards,</div>
<div>Anusha<br>
</div>
</div>
</body>
</html>

--_000_83F5C7385F545743AD4FB2A62F75B0734814F64AORSMSX108amrcor_--

--===============1631037358==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1631037358==--
