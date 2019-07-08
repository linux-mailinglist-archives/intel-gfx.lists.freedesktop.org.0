Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7838062B3C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 23:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F996E045;
	Mon,  8 Jul 2019 21:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4916E045
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 21:53:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 14:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; 
 d="scan'208,217";a="185763322"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2019 14:53:41 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.170]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 14:53:41 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: PR- GUC v33 (BXT,SKL,GLK.KBL,ICL)
Thread-Index: AdU115p62aukD0qaSPSrFmJA6drgcQ==
Date: Mon, 8 Jul 2019 21:53:40 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480FBB3B@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.41]
MIME-Version: 1.0
Subject: [Intel-gfx] PR- GUC v33 (BXT,SKL,GLK.KBL,ICL)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0886890368=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0886890368==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B073480FBB3BORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B073480FBB3BORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Can these i915 changes be merged to the linux-firmware.git?

The following changes since commit 70e43940b05e8d6e0c5f15b5e2d67760f1581ece=
:

  linux-firmware: rsi: add firmware image for redpine 9116 chipset (2019-06=
-28 07:41:20 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v33

for you to fetch changes up to 05dbae6639f09c3e0a02e93de5f803db9aadedd1:

  drm/i915/firmware: Add v33 of GuC for ICL (2019-07-08 14:40:55 -0700)

----------------------------------------------------------------
Anusha Srivatsa (5):
      drm/i915/firmware: Add v33 of GuC for BXT
      drm/i915/firmware: Add v33 of GuC for GLK
      drm/i915/firmware: Add v33 of GuC for SKL
      drm/i915/firmware: Add v33 of GuC for KBL
      drm/i915/firmware: Add v33 of GuC for ICL

 WHENCE                  |  15 +++++++++++++++
 i915/bxt_guc_33.0.0.bin | Bin 0 -> 181888 bytes
 i915/glk_guc_33.0.0.bin | Bin 0 -> 182336 bytes
 i915/icl_guc_33.0.0.bin | Bin 0 -> 385280 bytes
 i915/kbl_guc_33.0.0.bin | Bin 0 -> 182912 bytes
 i915/skl_guc_33.0.0.bin | Bin 0 -> 182080 bytes
 6 files changed, 15 insertions(+)
 create mode 100644 i915/bxt_guc_33.0.0.bin
 create mode 100644 i915/glk_guc_33.0.0.bin
 create mode 100644 i915/icl_guc_33.0.0.bin
 create mode 100644 i915/kbl_guc_33.0.0.bin
 create mode 100644 i915/skl_guc_33.0.0.bin

Thanks,
Anusha

--_000_83F5C7385F545743AD4FB2A62F75B073480FBB3BORSMSX108amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>Hi,</div>
<div><br>
</div>
<div>Can these i915 changes be merged to the linux-firmware.git?</div>
<div><br>
</div>
<div>The following changes since commit 70e43940b05e8d6e0c5f15b5e2d67760f15=
81ece:<br>
<br>
&nbsp; linux-firmware: rsi: add firmware image for redpine 9116 chipset (20=
19-06-28 07:41:20 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://anongit.freedesktop.org/drm/drm-firmware guc_v33<br>
<br>
for you to fetch changes up to 05dbae6639f09c3e0a02e93de5f803db9aadedd1:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v33 of GuC for ICL (2019-07-08 14:40:55 -0700=
)<br>
<br>
----------------------------------------------------------------<br>
Anusha Srivatsa (5):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for BXT<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for GLK<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for SKL<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for KBL<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for ICL<br=
>
<br>
&nbsp;WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 15 &#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;i915/bxt_guc_33.0.0.bin | Bin 0 -&gt; 181888 bytes<br>
&nbsp;i915/glk_guc_33.0.0.bin | Bin 0 -&gt; 182336 bytes<br>
&nbsp;i915/icl_guc_33.0.0.bin | Bin 0 -&gt; 385280 bytes<br>
&nbsp;i915/kbl_guc_33.0.0.bin | Bin 0 -&gt; 182912 bytes<br>
&nbsp;i915/skl_guc_33.0.0.bin | Bin 0 -&gt; 182080 bytes<br>
&nbsp;6 files changed, 15 insertions(&#43;)<br>
&nbsp;create mode 100644 i915/bxt_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/glk_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/icl_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/kbl_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/skl_guc_33.0.0.bin<br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Anusha<br>
</div>
</div>
</body>
</html>

--_000_83F5C7385F545743AD4FB2A62F75B073480FBB3BORSMSX108amrcor_--

--===============0886890368==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0886890368==--
