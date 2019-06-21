Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2594F13A
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 01:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1426E940;
	Fri, 21 Jun 2019 23:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B772B6E940
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 23:39:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 16:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; 
 d="scan'208,217";a="182203549"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2019 16:39:27 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Fri, 21 Jun 2019 16:39:26 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: PR-Latest GuC
Thread-Index: AdUoipA1CUeowpPBTZCle0n/Tm8/Ow==
Date: Fri, 21 Jun 2019 23:39:26 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480E5842@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: [Intel-gfx] PR-Latest GuC
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
Content-Type: multipart/mixed; boundary="===============0770979507=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0770979507==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B073480E5842ORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B073480E5842ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The following changes since commit acb56f2fae3235195bc99ecb7d09742fb4b65e63=
:

  cavium: Add firmware for CNN55XX crypto driver. (2019-06-18 09:12:52 -040=
0)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v33

for you to fetch changes up to c1f789d2a86885973481c07b833e143fe83e163a:

  drm/i915/firmware: Add v33 of GuC for ICL (2019-06-19 17:38:22 -0700)

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


Anusha

--_000_83F5C7385F545743AD4FB2A62F75B073480E5842ORSMSX108amrcor_
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
10pt;">The following changes since commit acb56f2fae3235195bc99ecb7d09742fb=
4b65e63:<br>
<br>
&nbsp; cavium: Add firmware for CNN55XX crypto driver. (2019-06-18 09:12:52=
 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://anongit.freedesktop.org/drm/drm-firmware guc_v33<br>
<br>
for you to fetch changes up to c1f789d2a86885973481c07b833e143fe83e163a:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v33 of GuC for ICL (2019-06-19 17:38:22 -0700=
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
<div><br>
</div>
<div><br>
</div>
<div>Anusha <br>
</div>
</div>
</body>
</html>

--_000_83F5C7385F545743AD4FB2A62F75B073480E5842ORSMSX108amrcor_--

--===============0770979507==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0770979507==--
