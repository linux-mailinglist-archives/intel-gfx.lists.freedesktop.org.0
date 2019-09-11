Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F861B07B3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7776E0F2;
	Thu, 12 Sep 2019 04:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4846E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 23:53:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 16:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; 
 d="scan'208,217";a="189821482"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 11 Sep 2019 16:53:48 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.9]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.16]) with mapi id 14.03.0439.000;
 Wed, 11 Sep 2019 16:53:48 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 firmware updates - PR for CML guc,huc;TGL DMC and
 Gen9-Gen11 HuC Updates
Thread-Index: AdVo/CeOYwUnxla4R/u2qvOtRTtA8w==
Date: Wed, 11 Sep 2019 23:53:48 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B07348159C37@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.137]
MIME-Version: 1.0
Subject: [Intel-gfx] i915 firmware updates - PR for CML guc,huc;
 TGL DMC and Gen9-Gen11 HuC Updates
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
Content-Type: multipart/mixed; boundary="===============1334366554=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1334366554==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B07348159C37ORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B07348159C37ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Josh,Kyle,Ben

Can these i915 updates be merged from cml_tgldmc_huc_updates to linux-firmw=
are

The following changes since commit 44d4fca9922a252a0bd81f6307bcc072a78da54a=
:

  Merge https://github.com/pmachata/linux-firmware (2018-09-13 11:45:40 -04=
00)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware cml_tgldmc_huc_updates

for you to fetch changes up to e848f4708bcea2fa829cfbfd7e7a1b3a83b91d3e:

  drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-11 15:46:03 -07=
00)

----------------------------------------------------------------
Anusha Srivatsa (8):
      drm/i915/firmware: Add v2.04 of DMC for TGL
      drm/i915/firmware: Add v33 of GuC for CML
      drm/i915/firmware: Add v2.0.0 of HuC for Skylake
      drm/i915/firmware: Add v4.0.0 of HuC for Kabylake
      drm/i915/firmware: Add v2.0.0 of HuC for Broxton
      drm/i915/firmware: Add v4.0.0 of HuC for Geminilake
      drm/i915/firmware: Add v4.0.0 of HuC for Cometlake
      drm/i915/firmware: Add v9.0.0 of HuC for Icelake

 WHENCE                   |  26 ++++++++++++++++++++++++++
 i915/bxt_huc_2.0.0.bin   | Bin 0 -> 149824 bytes
 i915/cml_guc_33.0.0.bin  | Bin 0 -> 182912 bytes
 i915/cml_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/glk_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/icl_huc_9.0.0.bin   | Bin 0 -> 498880 bytes
 i915/kbl_huc_4.0.0.bin   | Bin 0 -> 226048 bytes
 i915/skl_huc_2.0.0.bin   | Bin 0 -> 136320 bytes
 i915/tgl_dmc_ver2_04.bin | Bin 0 -> 18436 bytes
 9 files changed, 26 insertions(+)
 create mode 100644 i915/bxt_huc_2.0.0.bin
 create mode 100644 i915/cml_guc_33.0.0.bin
 create mode 100644 i915/cml_huc_4.0.0.bin
 create mode 100644 i915/glk_huc_4.0.0.bin
 create mode 100644 i915/icl_huc_9.0.0.bin
 create mode 100644 i915/kbl_huc_4.0.0.bin
 create mode 100644 i915/skl_huc_2.0.0.bin
 create mode 100644 i915/tgl_dmc_ver2_04.bin

Anusha

--_000_83F5C7385F545743AD4FB2A62F75B07348159C37ORSMSX108amrcor_
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
<div>Josh,Kyle,Ben</div>
<div><br>
</div>
<div>Can these i915 updates be merged from cml_tgldmc_huc_updates to linux-=
firmware</div>
<div><br>
</div>
<div>The following changes since commit 44d4fca9922a252a0bd81f6307bcc072a78=
da54a:<br>
<br>
&nbsp; Merge https://github.com/pmachata/linux-firmware (2018-09-13 11:45:4=
0 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://anongit.freedesktop.org/drm/drm-firmware cml_tgldmc_huc_update=
s<br>
<br>
for you to fetch changes up to e848f4708bcea2fa829cfbfd7e7a1b3a83b91d3e:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v9.0.0 of HuC for Icelake (2019-09-11 15:46:0=
3 -0700)<br>
<br>
----------------------------------------------------------------<br>
Anusha Srivatsa (8):<br>
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
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 26 &#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;i915/bxt_huc_2.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 149824 bytes<br>
&nbsp;i915/cml_guc_33.0.0.bin&nbsp; | Bin 0 -&gt; 182912 bytes<br>
&nbsp;i915/cml_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/glk_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/icl_huc_9.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 498880 bytes<br>
&nbsp;i915/kbl_huc_4.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 226048 bytes<br>
&nbsp;i915/skl_huc_2.0.0.bin&nbsp;&nbsp; | Bin 0 -&gt; 136320 bytes<br>
&nbsp;i915/tgl_dmc_ver2_04.bin | Bin 0 -&gt; 18436 bytes<br>
&nbsp;9 files changed, 26 insertions(&#43;)<br>
&nbsp;create mode 100644 i915/bxt_huc_2.0.0.bin<br>
&nbsp;create mode 100644 i915/cml_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/cml_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/glk_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/icl_huc_9.0.0.bin<br>
&nbsp;create mode 100644 i915/kbl_huc_4.0.0.bin<br>
&nbsp;create mode 100644 i915/skl_huc_2.0.0.bin<br>
&nbsp;create mode 100644 i915/tgl_dmc_ver2_04.bin<br>
</div>
<div><br>
</div>
<div>Anusha <br>
</div>
</div>
</body>
</html>

--_000_83F5C7385F545743AD4FB2A62F75B07348159C37ORSMSX108amrcor_--

--===============1334366554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1334366554==--
