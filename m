Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 360FD27F536
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 00:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296656E830;
	Wed, 30 Sep 2020 22:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59716E830
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 22:36:49 +0000 (UTC)
IronPort-SDR: ENRiJ5z1jJd8KUaMqleo8tok7MfQqMo9641sF7HthubLLlJwYy8YQBzRDbha6JnIfMMGiTUnYu
 cgZnhWUuknoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="150214240"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="150214240"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 15:36:45 -0700
IronPort-SDR: O9ga1uLoeGm5G/hO+TKRJ73W1UcfzHv3xYOyGu1jV6Zcx32IfLp9cOJtH41BTR1X2YKlKi+OxV
 FKzAksqYhcKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="312757391"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 30 Sep 2020 15:36:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 01:36:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 01:36:42 +0300
Message-Id: <20200930223642.28565-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix TGL DKL PHY DP vswing handling
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBIRE1JIHZzLiBub3QtSERNSSBjaGVjayBnb3QgaW52ZXJ0ZWQgd2hlbSB0aGUgYm9ndXMgZW5j
b2Rlci0+dHlwZQpjaGVja3Mgd2VyZSBlbGltaW5hdGVkLiBTbyBub3cgd2UncmUgdXNpbmcgMCBh
cyB0aGUgbGluayByYXRlIG9uIERQCmFuZCBwb3RlbnRpYWxseSBub24temVybyBvbiBIRE1JLCB3
aGljaCBpcyBleGFjdGx5IHRoZSBvcHBvc2l0ZSBvZgp3aGF0IHdlIHdhbnQuIFRoZSBvcmlnaW5h
bCBib2d1cyBjaGVjayBhY3R1YWxseSB3b3JrZWQgbW9yZSBjb3JyZWN0bHkKYnkgYWNjaWRlbnQg
c2luY2UgaWYgd291bGQgYWx3YXlzIGV2YWx1YXRlIHRvIHRydWUuIER1ZSB0byB0aGlzIHdlCm5v
dyBhbHdheXMgdXNlIHRoZSBSQlIvSEJSMSB2c3dpbmcgdGFibGUgYW5kIG5ldmVyIGV2ZXIgdGhl
IEhCUjIrCnZzd2luZyB0YWJsZS4gVGhhdCBpcyBwcm9iYWJseSBub3QgYSBnb29kIHdheSB0byBn
ZXQgYSBoaWdoIHF1YWxpdHkKc2lnbmFsIGF0IEhCUjIrIHJhdGVzLiBGaXggdGhlIGNoZWNrIHNv
IHdlIHBpY2sgdGhlIHJpZ2h0IHRhYmxlLgoKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KRml4ZXM6IDk0NjQxZWI2YzY5NiAoImRybS9p
OTE1L2Rpc3BsYXk6IEZpeCB0aGUgZW5jb2RlciB0eXBlIGNoZWNrIikKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNGQwNjE3OGNkNzZjLi5jZGNiN2IxMDM0YWUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMjc0Miw3ICsyNzQyLDcg
QEAgdGdsX2RrbF9waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwgaW50IGxpbmtfY2xvY2ssCiAJdTMyIG5fZW50cmllcywgdmFsLCBsbiwgZHBjbnRf
bWFzaywgZHBjbnRfdmFsOwogCWludCByYXRlID0gMDsKIAotCWlmICh0eXBlID09IElOVEVMX09V
VFBVVF9IRE1JKSB7CisJaWYgKHR5cGUgIT0gSU5URUxfT1VUUFVUX0hETUkpIHsKIAkJc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKIAogCQlyYXRl
ID0gaW50ZWxfZHAtPmxpbmtfcmF0ZTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
