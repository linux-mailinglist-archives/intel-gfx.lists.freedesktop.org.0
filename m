Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22825B7B8D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7828E6F80F;
	Thu, 19 Sep 2019 14:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63716F80F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:05:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:05:15 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="271223087"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:05:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:58 +0300
Message-Id: <48a647c1e9e59b27b9fcd2193835dad68bf3839f.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: move gem init up from modeset
 init
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGFpciB0aGUgZ2VtIGluaXQgYW5kIGNsZWFudXAgaW4gdGhlIHNhbWUgbGF5ZXIuIFRoaXMgbW92
ZXMgdGhlIGdlbSBpbml0CmJlZm9yZSB0aGUgbW9kZXNldCBpbml0LgoKVGhlIGVycm9yIHBhdGhz
IHJlbWFpbiBhIG1lc3MuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyMCArKysr
KysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDMwYjA1NDhhNTY0OC4uMjc2
MTNmNDk3YTQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTM5MiwxMCArMzkyLDYgQEAg
c3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlX2lycShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlpZiAocmV0KQogCQlnb3RvIG91dDsKIAotCXJldCA9IGk5MTVfZ2Vt
X2luaXQoaTkxNSk7Ci0JaWYgKHJldCkKLQkJZ290byBjbGVhbnVwX21vZGVzZXQ7Ci0KIAlpbnRl
bF9vdmVybGF5X3NldHVwKGk5MTUpOwogCiAJaWYgKCFIQVNfRElTUExBWShpOTE1KSB8fCAhSU5U
RUxfRElTUExBWV9FTkFCTEVEKGk5MTUpKQpAQCAtNDAzLDcgKzM5OSw3IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZV9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAKIAlyZXQgPSBpbnRlbF9mYmRldl9pbml0KCZpOTE1LT5kcm0pOwogCWlmIChyZXQpCi0J
CWdvdG8gY2xlYW51cF9nZW07CisJCWdvdG8gY2xlYW51cF9tb2Rlc2V0OwogCiAJLyogT25seSBl
bmFibGUgaG90cGx1ZyBoYW5kbGluZyBvbmNlIHRoZSBmYmRldiBpcyBmdWxseSBzZXQgdXAuICov
CiAJaW50ZWxfaHBkX2luaXQoaTkxNSk7CkBAIC00MTIsMTAgKzQwOCw2IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZV9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAKIAlyZXR1cm4gMDsKIAotY2xlYW51cF9nZW06Ci0JaTkxNV9nZW1fc3VzcGVuZChpOTE1
KTsKLQlpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKGk5MTUpOwotCWk5MTVfZ2VtX2RyaXZlcl9yZWxl
YXNlKGk5MTUpOwogY2xlYW51cF9tb2Rlc2V0OgogCWludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92
ZV9pcnEoaTkxNSk7CiAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKGk5MTUpOwpAQCAtMTU4
Niw5ICsxNTc4LDEzIEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAlpZiAocmV0KQogCQlnb3RvIG91
dF9jbGVhbnVwX21vZGVzZXQ7CiAKKwlyZXQgPSBpOTE1X2dlbV9pbml0KGRldl9wcml2KTsKKwlp
ZiAocmV0KQorCQlnb3RvIG91dF9jbGVhbnVwX2lycTsKKwogCXJldCA9IGk5MTVfZHJpdmVyX21v
ZGVzZXRfcHJvYmVfaXJxKGRldl9wcml2KTsKIAlpZiAocmV0IDwgMCkKLQkJZ290byBvdXRfY2xl
YW51cF9pcnE7CisJCWdvdG8gb3V0X2NsZWFudXBfZ2VtOwogCiAJaTkxNV9kcml2ZXJfcmVnaXN0
ZXIoZGV2X3ByaXYpOwogCkBAIC0xNTk4LDYgKzE1OTQsMTAgQEAgaW50IGk5MTVfZHJpdmVyX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50
KQogCiAJcmV0dXJuIDA7CiAKK291dF9jbGVhbnVwX2dlbToKKwlpOTE1X2dlbV9zdXNwZW5kKGRl
dl9wcml2KTsKKwlpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKGRldl9wcml2KTsKKwlpOTE1X2dlbV9k
cml2ZXJfcmVsZWFzZShkZXZfcHJpdik7CiBvdXRfY2xlYW51cF9pcnE6CiAJaW50ZWxfaXJxX3Vu
aW5zdGFsbChkZXZfcHJpdik7CiBvdXRfY2xlYW51cF9tb2Rlc2V0OgotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
