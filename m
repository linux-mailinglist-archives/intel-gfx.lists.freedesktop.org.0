Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF177B5D9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 00:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EC389DF7;
	Tue, 30 Jul 2019 22:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D182C89DA8
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 22:47:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 15:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="196104732"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.193])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jul 2019 15:47:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 15:47:50 -0700
Message-Id: <20190730224753.14907-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/4] drm/i915/bdw+: Move misc display IRQ
 handling to it own function
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBtb3ZpbmcgaXQgdG8gcmVkdWNlIHRoZSB0YWJzIGFuZCBhdm9pZCBicmVhayBjb2RlIGxp
bmVzLgpObyBiZWhhdmlvciBjaGFuZ2VzIGludGVuZGVkIGhlcmUuCgp2MjoKLSBSZWFkaW5nIG1p
c2MgZGlzcGxheSBJUlEgb3V0c2lkZSBvZiBnZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoKSBhcwpv
dGhlciBpcnEgaGFuZGxlcnMgKERoaW5ha2FyYW4pCgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8
ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBEaGluYWthcmFuIFBh
bmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyB8IDQ1ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCmluZGV4IGZiZTEzYmFjZDViNy4uZjU0NzQ0NjQ0MjgwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI5ODIsNiArMjk4MiwyOCBAQCBzdGF0aWMgdTMyIGdlbjhf
ZGVfcGlwZV9mYXVsdF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJ
cmV0dXJuIEdFTjhfREVfUElQRV9JUlFfRkFVTFRfRVJST1JTOwogfQogCitzdGF0aWMgdm9pZAor
Z2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgdTMyIGlpcikKK3sKKwlib29sIGZvdW5kID0gZmFsc2U7CisKKwlpZiAoaWlyICYgR0VOOF9E
RV9NSVNDX0dTRSkgeworCQlpbnRlbF9vcHJlZ2lvbl9hc2xlX2ludHIoZGV2X3ByaXYpOworCQlm
b3VuZCA9IHRydWU7CisJfQorCisJaWYgKGlpciAmIEdFTjhfREVfRURQX1BTUikgeworCQl1MzIg
cHNyX2lpciA9IEk5MTVfUkVBRChFRFBfUFNSX0lJUik7CisKKwkJaW50ZWxfcHNyX2lycV9oYW5k
bGVyKGRldl9wcml2LCBwc3JfaWlyKTsKKwkJSTkxNV9XUklURShFRFBfUFNSX0lJUiwgcHNyX2lp
cik7CisJCWZvdW5kID0gdHJ1ZTsKKwl9CisKKwlpZiAoIWZvdW5kKQorCQlEUk1fRVJST1IoIlVu
ZXhwZWN0ZWQgREUgTWlzYyBpbnRlcnJ1cHRcbiIpOworfQorCiBzdGF0aWMgaXJxcmV0dXJuX3QK
IGdlbjhfZGVfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1
MzIgbWFzdGVyX2N0bCkKIHsKQEAgLTI5OTIsMjkgKzMwMTQsMTIgQEAgZ2VuOF9kZV9pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQog
CWlmIChtYXN0ZXJfY3RsICYgR0VOOF9ERV9NSVNDX0lSUSkgewogCQlpaXIgPSBJOTE1X1JFQUQo
R0VOOF9ERV9NSVNDX0lJUik7CiAJCWlmIChpaXIpIHsKLQkJCWJvb2wgZm91bmQgPSBmYWxzZTsK
LQogCQkJSTkxNV9XUklURShHRU44X0RFX01JU0NfSUlSLCBpaXIpOwogCQkJcmV0ID0gSVJRX0hB
TkRMRUQ7Ci0KLQkJCWlmIChpaXIgJiBHRU44X0RFX01JU0NfR1NFKSB7Ci0JCQkJaW50ZWxfb3By
ZWdpb25fYXNsZV9pbnRyKGRldl9wcml2KTsKLQkJCQlmb3VuZCA9IHRydWU7Ci0JCQl9Ci0KLQkJ
CWlmIChpaXIgJiBHRU44X0RFX0VEUF9QU1IpIHsKLQkJCQl1MzIgcHNyX2lpciA9IEk5MTVfUkVB
RChFRFBfUFNSX0lJUik7Ci0KLQkJCQlpbnRlbF9wc3JfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIHBz
cl9paXIpOwotCQkJCUk5MTVfV1JJVEUoRURQX1BTUl9JSVIsIHBzcl9paXIpOwotCQkJCWZvdW5k
ID0gdHJ1ZTsKLQkJCX0KLQotCQkJaWYgKCFmb3VuZCkKLQkJCQlEUk1fRVJST1IoIlVuZXhwZWN0
ZWQgREUgTWlzYyBpbnRlcnJ1cHRcbiIpOwotCQl9Ci0JCWVsc2UKKwkJCWdlbjhfZGVfbWlzY19p
cnFfaGFuZGxlcihkZXZfcHJpdiwgaWlyKTsKKwkJfSBlbHNlIHsKIAkJCURSTV9FUlJPUigiVGhl
IG1hc3RlciBjb250cm9sIGludGVycnVwdCBsaWVkIChERSBNSVNDKSFcbiIpOworCQl9CiAJfQog
CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgKG1hc3Rlcl9jdGwgJiBHRU4xMV9E
RV9IUERfSVJRKSkgewotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
