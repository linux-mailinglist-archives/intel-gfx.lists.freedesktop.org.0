Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D436F151A38
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45556EE5E;
	Tue,  4 Feb 2020 12:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CB06EE58
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481751"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:52 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:27 +0530
Message-Id: <20200204112927.17391-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200204112927.17391-1-anshuman.gupta@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Enable 3 display pipes support
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

QWxsb3cgMy1kaXNwbGF5IHBpcGVzIFNLVSBzeXN0ZW0gd2l0aCBhbnkgY29tYmluYXRpb24KaW4g
SU5URUxfSU5GTyBwaXBlIG1hc2suCkIuU3BlYzo1MDA3NQoKY2hhbmdlcyBzaW5jZSBSRkM6Ci0g
dXNpbmcgaW50ZWxfcGlwZV9tYXNrX2lzX3ZhbGlkKCkgZnVuY3Rpb24gdG8gY2hlY2sgaW50ZWdy
aXR5IG9mCiAgcGlwZV9tYXNrLiBbVmlsbGVdCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFu
c2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jIHwgMzggKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMjggaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZmNkYWNkNmQ0YWE1Li5jYWY5M2E2OGEwNTYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtODk2LDYgKzg5Niwz
MCBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3N1YnBsYXRmb3JtX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJUlVOVElNRV9JTkZPKGk5MTUpLT5wbGF0Zm9ybV9tYXNrW3Bp
XSB8PSBtYXNrOwogfQogCitzdGF0aWMgYm9vbAoraW50ZWxfcGlwZV9tYXNrX2lzX3ZhbGlkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggcGlwZV9tYXNrKQoreworCS8qCisJ
ICogQXQgbGVhc3Qgb25lIHBpcGUgc2hvdWxkIGJlIGVuYWJsZWQuCisJICovCisJaWYgKHBpcGVf
bWFzayA9PSAwKQorCQlyZXR1cm4gZmFsc2U7CisJLyoKKwkgKiBpZiB0aGVyZSBhcmUgZGlzYWJs
ZWQgcGlwZXMgdGhleSBzaG91bGQgYmUgdGhlIGxhc3Qgb25lcywKKwkgKiB3aXRoIG5vIGhvbHNl
cyBpbiB0aGUgbWFzayBmb3IgRGlzcGFseSBHZW48PTEyLgorCSAqLworCWlmICghaXNfcG93ZXJf
b2ZfMihwaXBlX21hc2sgKyAxKSkgeworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8PSAxMSkK
KwkJCXJldHVybiBmYWxzZTsKKwkJZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSkKKwkJ
CXJldHVybiBmYWxzZTsKKwkJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMikpCisJCQlyZXR1
cm4gdHJ1ZTsKKwl9CisKKwlyZXR1cm4gdHJ1ZTsKK30KKwogLyoqCiAgKiBpbnRlbF9kZXZpY2Vf
aW5mb19ydW50aW1lX2luaXQgLSBpbml0aWFsaXplIHJ1bnRpbWUgaW5mbwogICogQGRldl9wcml2
OiB0aGUgaTkxNSBkZXZpY2UKQEAgLTk5NSwxNyArMTAxOSwxMSBAQCB2b2lkIGludGVsX2Rldmlj
ZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CSAgICAoZGZzbSAmIFRHTF9ERlNNX1BJUEVfRF9ESVNBQkxFKSkKIAkJCWVuYWJsZWRfbWFzayAm
PSB+QklUKFBJUEVfRCk7CiAKLQkJLyoKLQkJICogQXQgbGVhc3Qgb25lIHBpcGUgc2hvdWxkIGJl
IGVuYWJsZWQgYW5kIGlmIHRoZXJlIGFyZQotCQkgKiBkaXNhYmxlZCBwaXBlcywgdGhleSBzaG91
bGQgYmUgdGhlIGxhc3Qgb25lcywgd2l0aCBubyBob2xlcwotCQkgKiBpbiB0aGUgbWFzay4KLQkJ
ICovCi0JCWlmIChlbmFibGVkX21hc2sgPT0gMCB8fCAhaXNfcG93ZXJfb2ZfMihlbmFibGVkX21h
c2sgKyAxKSkKLQkJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sCi0JCQkJImludmFsaWQgcGlwZSBm
dXNlIGNvbmZpZ3VyYXRpb246IGVuYWJsZWRfbWFzaz0weCV4XG4iLAotCQkJCWVuYWJsZWRfbWFz
ayk7Ci0JCWVsc2UKKwkJaWYgKGludGVsX3BpcGVfbWFza19pc192YWxpZChkZXZfcHJpdiwgZW5h
YmxlZF9tYXNrKSkKIAkJCWluZm8tPnBpcGVfbWFzayA9IGVuYWJsZWRfbWFzazsKKwkJZWxzZQor
CQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgImludmFsaWQgcGlwZSBmdXNlIGNvbmZpZ3VyYXRp
b246IGVuYWJsZWRfbWFzaz0weCV4XG4iLAorCQkJCWVuYWJsZWRfbWFzayk7CiAKIAkJaWYgKGRm
c20gJiBTS0xfREZTTV9ESVNQTEFZX0hEQ1BfRElTQUJMRSkKIAkJCWluZm8tPmRpc3BsYXkuaGFz
X2hkY3AgPSAwOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
