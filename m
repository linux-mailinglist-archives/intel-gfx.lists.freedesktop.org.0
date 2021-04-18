Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5063632D3
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 02:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E8D6E075;
	Sun, 18 Apr 2021 00:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC8F6E059
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Apr 2021 00:19:09 +0000 (UTC)
IronPort-SDR: vfq7juREsNGs7F4mLcWWiK66gy45G4VBbXbIQHwfUKINTuOP6Gwcf3xfyX81kZ3MC8eRQBBlZF
 MFZKc7A2m/hg==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182687382"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="182687382"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
IronPort-SDR: kA6AHlFk8nxDdmWe+kzCSv5ABydVE1AoL2hgLxEYgufjpVx45y6HLrTx4q+rXvuoOtgNMqkOGU
 zRrpnYvjByxA==
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="426049786"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.36.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Apr 2021 17:21:23 -0700
Message-Id: <20210418002126.87882-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
References: <20210418002126.87882-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/display: Replace
 intel_psr_enabled() calls by intel_crtc_state check
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

QWxsIG9mIHRoaXMgcGxhY2VzIGRvbid0IG5lZWQgdG8gaW50ZWxfcHNyX2VuYWJsZWQoKSB0aGF0
IHdpbGwgbG9jawpwc3IgbXV0ZXgsIGNoZWNrIHN0YXRlIGFuZCB1bmxvY2suCgpJbnN0ZWFkIGl0
IGNhbiBkaXJlY3RseSBjaGVjayBQU1Igc3RhdGUgaW4gaW50ZWxfY3J0Y19zdGF0ZSwgdGhlIG9u
bHkKcGxhY2UgdGhhdCB3YXMgbm90IHBvc3NpYmxlIHdhcyBpbnRlbF9yZWFkX2RwX3ZzY19zZHAo
KSBidXQgc2luY2UKImRybS9pOTE1L2Rpc3BsYXk6IEZpbGwgUFNSIHN0YXRlIGR1cmluZyBoYXJk
d2FyZSBjb25maWd1cmF0aW9uIHJlYWQKb3V0IiBpdCBpcyBwb3NzaWJsZS4KCkNjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDggKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCmluZGV4IDVlZTk1M2FhYTAwYy4uNzJiY2MxMGNhZTRmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yODYxLDcgKzI4NjEsNiBAQCB2
b2lkIGludGVsX2RwX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCQkJICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXIt
PmJhc2UuZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2Rw
KGVuY29kZXIpOwogCWk5MTVfcmVnX3QgcmVnID0gSFNXX1RWSURFT19ESVBfQ1RMKGNydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyKTsKIAl1MzIgZGlwX2VuYWJsZSA9IFZJREVPX0RJUF9FTkFCTEVf
QVZJX0hTVyB8IFZJREVPX0RJUF9FTkFCTEVfR0NQX0hTVyB8CiAJCQkgVklERU9fRElQX0VOQUJM
RV9WU19IU1cgfCBWSURFT19ESVBfRU5BQkxFX0dNUF9IU1cgfApAQCAtMjg3MCw3ICsyODY5LDcg
QEAgdm9pZCBpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAogCS8qIFRPRE86IEFkZCBEU0MgY2FzZSAoRElQX0VOQUJMRV9QUFMpICovCiAJLyog
V2hlbiBQU1IgaXMgZW5hYmxlZCwgdGhpcyByb3V0aW5lIGRvZXNuJ3QgZGlzYWJsZSBWU0MgRElQ
ICovCi0JaWYgKGludGVsX3Bzcl9lbmFibGVkKGludGVsX2RwKSkKKwlpZiAoY3J0Y19zdGF0ZS0+
aGFzX3BzcikKIAkJdmFsICY9IH5kaXBfZW5hYmxlOwogCWVsc2UKIAkJdmFsICY9IH4oZGlwX2Vu
YWJsZSB8IFZJREVPX0RJUF9FTkFCTEVfVlNDX0hTVyk7CkBAIC0yODg1LDcgKzI4ODQsNyBAQCB2
b2lkIGludGVsX2RwX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJpdiwgcmVnKTsKIAogCS8qIFdoZW4gUFNS
IGlzIGVuYWJsZWQsIFZTQyBTRFAgaXMgaGFuZGxlZCBieSBQU1Igcm91dGluZSAqLwotCWlmICgh
aW50ZWxfcHNyX2VuYWJsZWQoaW50ZWxfZHApKQorCWlmICghY3J0Y19zdGF0ZS0+aGFzX3BzcikK
IAkJaW50ZWxfd3JpdGVfZHBfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUsIERQX1NEUF9WU0MpOwog
CiAJaW50ZWxfd3JpdGVfZHBfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUsIEhETUlfUEFDS0VUX1RZ
UEVfR0FNVVRfTUVUQURBVEEpOwpAQCAtMzAxMiwxNCArMzAxMSwxMyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9yZWFkX2RwX3ZzY19zZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJ
ICBzdHJ1Y3QgZHJtX2RwX3ZzY19zZHAgKnZzYykKIHsKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKLQlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXVuc2ln
bmVkIGludCB0eXBlID0gRFBfU0RQX1ZTQzsKIAlzdHJ1Y3QgZHBfc2RwIHNkcCA9IHt9OwogCWlu
dCByZXQ7CiAKIAkvKiBXaGVuIFBTUiBpcyBlbmFibGVkLCBWU0MgU0RQIGlzIGhhbmRsZWQgYnkg
UFNSIHJvdXRpbmUgKi8KLQlpZiAoaW50ZWxfcHNyX2VuYWJsZWQoaW50ZWxfZHApKQorCWlmIChj
cnRjX3N0YXRlLT5oYXNfcHNyKQogCQlyZXR1cm47CiAKIAlpZiAoKGNydGNfc3RhdGUtPmluZm9m
cmFtZXMuZW5hYmxlICYKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
