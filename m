Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC88BE47A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 20:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A6C6ECA2;
	Wed, 25 Sep 2019 18:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E646EC7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 18:16:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 11:16:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="364405726"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 11:16:51 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 23:40:21 +0530
Message-Id: <20190925181023.12290-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190925181023.12290-1-anshuman.gupta@intel.com>
References: <20190925181023.12290-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 5/7] drm/i915/tgl: DC3CO PSR2 helper
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

RGlzYWxsb3cgREMzQ08gc3RhdGUgYmVmb3JlIFBTUjIgZXhpdC4KU3RvcmUgZGMzY29fZXhpdGxp
bmUgZnJvbSBjcnRjIHN0YXRlIHRvIHBzciBkZXZfcHJpdgpzdHJ1Y3R1cmUgdG8gdXNlIGl0IGVh
c2lseSB3aGVuZXZlciBpdCByZXF1aXJlcy4KCnYxOiBNb3ZlZCBjYWxsaW5nIG9mIHRnbF9lbmFi
bGVfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKCkgdG8KICAgIGludGVsX3Bzcl9lbmFibGUoKS4g
W0ltcmVdCnYyOiBNb3ZlZCB0Z2xfcHNyMl9kZWVwX3NsZWVwX2VuYWJsZS9kaXNhYmxlIGZ1bmN0
aW9uIHRvCiAgICB0aGUgcGF0Y2hlcyB3aGVyZSB0aGV5IGFyZSBnZXR0aW5nIHVzZWQgYW5kIHVz
ZWQgZGMzY29fZXhpdGxpbmUKICAgIGNoZWNrIGluc3RlYWQgb2YgVEdMIGNoZWNrLiBbSW1yZV0K
CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDgg
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAxICsK
IDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYjNjN2VlZjUzYmYzLi5iZjBiNzQxZDMyNDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNTM0LDYgKzUzNCwxMiBA
QCB0cmFuc2NvZGVyX2hhc19wc3IyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
ZW51bSB0cmFuc2NvZGVyIHRyYW5zKQogCQlyZXR1cm4gdHJhbnMgPT0gVFJBTlNDT0RFUl9FRFA7
CiB9CiAKK3N0YXRpYyB2b2lkIHRnbF9kaXNhbGxvd19kYzNjb19vbl9wc3IyX2V4aXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghZGV2X3ByaXYtPnBzci5kYzNj
b19leGl0bGluZSkKKwkJcmV0dXJuOworfQorCiBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZp
Z192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTc0Niw2ICs3NTIsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQgPSBpbnRlbF9wc3IyX2VuYWJsZWQoZGV2
X3ByaXYsIGNydGNfc3RhdGUpOwogCWRldl9wcml2LT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRz
ID0gMDsKIAlkZXZfcHJpdi0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJh
c2UuY3J0YyktPnBpcGU7CisJZGV2X3ByaXYtPnBzci5kYzNjb19leGl0bGluZSA9IGNydGNfc3Rh
dGUtPmRjM2NvX2V4aXRsaW5lOwogCWRldl9wcml2LT5wc3IudHJhbnNjb2RlciA9IGNydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyOwogCiAJLyoKQEAgLTgyOSw2ICs4MzYsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9wc3JfZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfQog
CiAJaWYgKGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkKSB7CisJCXRnbF9kaXNhbGxvd19kYzNj
b19vbl9wc3IyX2V4aXQoZGV2X3ByaXYpOwogCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUjJfQ1RM
KGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwogCQlXQVJOX09OKCEodmFsICYgRURQX1BTUjJf
RU5BQkxFKSk7CiAJCXZhbCAmPSB+RURQX1BTUjJfRU5BQkxFOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKaW5kZXggYjM1NDQ3MDVhZjliLi5iODZiNWJkMWI3MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApAQCAtNTAwLDYgKzUwMCw3IEBAIHN0cnVjdCBpOTE1X3BzciB7CiAJYm9vbCBzaW5rX25v
dF9yZWxpYWJsZTsKIAlib29sIGlycV9hdXhfZXJyb3I7CiAJdTE2IHN1X3hfZ3JhbnVsYXJpdHk7
CisJdTMyIGRjM2NvX2V4aXRsaW5lOwogfTsKIAogI2RlZmluZSBRVUlSS19MVkRTX1NTQ19ESVNB
QkxFICgxPDwxKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
