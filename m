Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FBA20979D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FB26E8E3;
	Thu, 25 Jun 2020 00:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7906E8E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:27:41 +0000 (UTC)
IronPort-SDR: XKoDysaKNr36iwkXhrXcBkupGeNFhi6OP+fVfx9X0I2VlrCKzhWzLa0YBTrLGje/3IVXijx7i4
 EmVf/drjAxyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="209819694"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="209819694"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:27:40 -0700
IronPort-SDR: M8mhakZEEZHDCWPI5Ik8qYpPK69wKbXSwym24gFhjA07OyaXp3YQ4i3GnA4iCj17D6vJqPvHCx
 iqrl8uj5A1GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="294241693"
Received: from thivyajx-mobl.gar.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.155.111])
 by orsmga007.jf.intel.com with ESMTP; 24 Jun 2020 17:27:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:29:04 -0700
Message-Id: <20200625002906.116594-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/bios: Parse HOBL parameter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SE9CTCBtZWFucyBob3VycyBvZiBiYXR0ZXJ5IGxpZmUsIGl0IGlzIGEgcG93ZXItc2F2aW5nIGZl
YXR1cmUKd2VyZSBzdXBwb3J0ZWQgbW90aGVyYm9hcmRzIGNhbiB1c2UgYSBzcGVjaWFsIHZvbHRh
Z2Ugc3dpbmcgdGFibGUKdGhhdCB1c2VzIGxlc3MgcG93ZXIuCgpTbyBoZXJlIHBhcnNpbmcgdGhl
IFZCVCB0byBjaGVjayBpZiB0aGlzIGZlYXR1cmUgaXMgc3VwcG9ydGVkLgoKQlNwZWM6IDIwMTUw
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8
IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAx
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8IDEgKwog
MyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDY1OTNlMmMzODA0My4uYzUzYzg1ZDM4ZmE1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtNzIyLDYgKzcyMiw5
IEBAIHBhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAJICovCiAJaWYgKCEocG93ZXItPmRycnMgJiBCSVQocGFuZWxfdHlw
ZSkpKQogCQlkZXZfcHJpdi0+dmJ0LmRycnNfdHlwZSA9IERSUlNfTk9UX1NVUFBPUlRFRDsKKwor
CWlmIChiZGItPnZlcnNpb24gPj0gMjMyKQorCQlkZXZfcHJpdi0+dmJ0LmVkcC5ob2JsID0gcG93
ZXItPmhvYmwgJiBCSVQocGFuZWxfdHlwZSk7CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKaW5kZXggYWVmN2ZlOTMyZDFh
Li42ZmFhYmQ0ZjZkNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmJ0X2RlZnMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZidF9kZWZzLmgKQEAgLTgyMCw2ICs4MjAsNyBAQCBzdHJ1Y3QgYmRiX2xmcF9wb3dlciB7CiAJ
dTE2IGFkYjsKIAl1MTYgbGFjZV9lbmFibGVkX3N0YXR1czsKIAlzdHJ1Y3QgYWdyZXNzaXZlbmVz
c19wcm9maWxlX2VudHJ5IGFnZ3Jlc3NpdmVuZXNbMTZdOworCXUxNiBob2JsOyAvKiAyMzIrICov
CiB9IF9fcGFja2VkOwogCiAvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggOWFhZDNlYzk3
OWJkLi4xNjY5MmM5NDM1MWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNjkwLDYgKzY5
MCw3IEBAIHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7CiAJCWJvb2wgaW5pdGlhbGl6ZWQ7CiAJCWlu
dCBicHA7CiAJCXN0cnVjdCBlZHBfcG93ZXJfc2VxIHBwczsKKwkJYm9vbCBob2JsOwogCX0gZWRw
OwogCiAJc3RydWN0IHsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
