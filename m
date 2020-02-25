Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0417F16EC46
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:14:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E246EB62;
	Tue, 25 Feb 2020 17:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799046EB59
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:14:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:12:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="231088106"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 25 Feb 2020 09:12:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:12:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:25 +0200
Message-Id: <20200225171125.28885-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 20/20] drm/i915: Check slice mask for holes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSB0aGUgZGJ1ZiBzbGljZSBtYXNrIGZvciBhbnkgaW5kaXZpZHVhbCBwaXBlIGhhcyBu
bwpob2xlcyBiZXR3ZWVuIHRoZSBzbGljZXMuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rh
bmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggN2VkYWM1MDZkMzQzLi5mYTM5YWIwYjEy
MjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMzgyNyw2ICszODI3LDE0IEBAIHN0YXRp
YyBpbnQgaW50ZWxfZGJ1Zl9zbGljZV9zaXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAkJSU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9zdXBwb3J0ZWRfZGJ1Zl9zbGljZXM7
CiB9CiAKK3N0YXRpYyBib29sIGJpdG1hc2tfaXNfY29udGlndW91cyh1bnNpZ25lZCBpbnQgYml0
bWFzaykKK3sKKwlpZiAoYml0bWFzaykKKwkJYml0bWFzayA+Pj0gZmZzKGJpdG1hc2spIC0gMTsK
KworCXJldHVybiBpc19wb3dlcl9vZl8yKGJpdG1hc2sgKyAxKTsKK30KKwogc3RhdGljIHZvaWQK
IHNrbF9kZGJfZW50cnlfZm9yX3NsaWNlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIHU4IHNsaWNlX21hc2ssCiAJCQkgc3RydWN0IHNrbF9kZGJfZW50cnkgKmRkYikKQEAgLTM4
NDQsNiArMzg1Miw3IEBAIHNrbF9kZGJfZW50cnlfZm9yX3NsaWNlcyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHU4IHNsaWNlX21hc2ssCiAKIAlXQVJOX09OKGRkYi0+c3RhcnQg
Pj0gZGRiLT5lbmQpOwogCVdBUk5fT04oZGRiLT5lbmQgPiBpbnRlbF9kYnVmX3NpemUoZGV2X3By
aXYpKTsKKwlXQVJOX09OKCFiaXRtYXNrX2lzX2NvbnRpZ3VvdXMoc2xpY2VfbWFzaykpOwogfQog
CiBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2NydGNfZGRiX3dlaWdodChjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
