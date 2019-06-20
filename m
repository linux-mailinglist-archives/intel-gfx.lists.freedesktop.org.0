Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 276FD4C48A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 02:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A36C6E49A;
	Thu, 20 Jun 2019 00:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FE56E49A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 00:35:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; 
 d="scan'208,217";a="182905007"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jun 2019 17:35:38 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 17:35:37 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.187]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:35:37 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: PR v33.0.0 of guC
Thread-Index: AdUnABQCZGmQGps/TuOW3A+OR3tWtg==
Date: Thu, 20 Jun 2019 00:35:36 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480E20B4@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: [Intel-gfx] PR v33.0.0 of guC
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
Content-Type: multipart/mixed; boundary="===============1090132605=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1090132605==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83F5C7385F545743AD4FB2A62F75B073480E20B4ORSMSX108amrcor_"

--_000_83F5C7385F545743AD4FB2A62F75B073480E20B4ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sending PR for latest guC version-

The following changes since commit acb56f2fae3235195bc99ecb7d09742fb4b65e63=
:

  cavium: Add firmware for CNN55XX crypto driver. (2019-06-18 09:12:52 -040=
0)

are available in the Git repository at:

  git://git.anongit.freedesktop.org/drm/drm-firmware/ guc_v33

for you to fetch changes up to 2a2cda3824225601d8c6ec32c4a6d98ab736cdf8:

  drm/i915/firmware: Add v33 of GuC for KBL (2019-06-19 17:13:28 -0700)

----------------------------------------------------------------
Anusha Srivatsa (4):
      drm/i915/firmware: Add v33 of GuC for BXT
      drm/i915/firmware: Add v33 of GuC for GLK
      drm/i915/firmware: Add v33 of GuC for SKL
      drm/i915/firmware: Add v33 of GuC for KBL

 WHENCE                  |  12 ++++++++++++
 i915/bxt_guc_33.0.0.bin | Bin 0 -> 181888 bytes
 i915/glk_guc_33.0.0.bin | Bin 0 -> 182336 bytes
 i915/kbl_guc_33.0.0.bin | Bin 0 -> 182912 bytes
 i915/skl_guc_33.0.0.bin | Bin 0 -> 182080 bytes
 5 files changed, 12 insertions(+)
 create mode 100644 i915/bxt_guc_33.0.0.bin
 create mode 100644 i915/glk_guc_33.0.0.bin
 create mode 100644 i915/kbl_guc_33.0.0.bin
 create mode 100644 i915/skl_guc_33.0.0.bin

Thanks,
Anusha

--_000_83F5C7385F545743AD4FB2A62F75B073480E20B4ORSMSX108amrcor_
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
<div>Sending PR for latest guC version-</div>
<div><br>
</div>
<div>The following changes since commit acb56f2fae3235195bc99ecb7d09742fb4b=
65e63:<br>
<br>
&nbsp; cavium: Add firmware for CNN55XX crypto driver. (2019-06-18 09:12:52=
 -0400)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://git.anongit.freedesktop.org/drm/drm-firmware/ guc_v33<br>
<br>
for you to fetch changes up to 2a2cda3824225601d8c6ec32c4a6d98ab736cdf8:<br=
>
<br>
&nbsp; drm/i915/firmware: Add v33 of GuC for KBL (2019-06-19 17:13:28 -0700=
)<br>
<br>
----------------------------------------------------------------<br>
Anusha Srivatsa (4):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for BXT<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for GLK<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for SKL<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/i915/firmware: Add v33 of GuC for KBL<br=
>
<br>
&nbsp;WHENCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 12 &#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;i915/bxt_guc_33.0.0.bin | Bin 0 -&gt; 181888 bytes<br>
&nbsp;i915/glk_guc_33.0.0.bin | Bin 0 -&gt; 182336 bytes<br>
&nbsp;i915/kbl_guc_33.0.0.bin | Bin 0 -&gt; 182912 bytes<br>
&nbsp;i915/skl_guc_33.0.0.bin | Bin 0 -&gt; 182080 bytes<br>
&nbsp;5 files changed, 12 insertions(&#43;)<br>
&nbsp;create mode 100644 i915/bxt_guc_33.0.0.bin<br>
&nbsp;create mode 100644 i915/glk_guc_33.0.0.bin<br>
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

--_000_83F5C7385F545743AD4FB2A62F75B073480E20B4ORSMSX108amrcor_--

--===============1090132605==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1090132605==--
