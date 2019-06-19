Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D7D4C3E5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457836E487;
	Wed, 19 Jun 2019 23:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C926E48C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:02:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="153940353"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 16:02:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 16:02:19 -0700
Message-Id: <20190619230222.4346-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/4] drm/i915/bdw+: Move misc display IRQ
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
aTkxNS9pOTE1X2lycS5jCmluZGV4IGIyZTI3YjViMGRmOS4uMTRiMDkzMzgwOWQ4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI4MjYsNiArMjgyNiwyOCBAQCBzdGF0aWMgdTMyIGdlbjhf
ZGVfcG9ydF9hdXhfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0
dXJuIG1hc2s7CiB9CiAKK3N0YXRpYyB2b2lkCitnZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQoreworCWJvb2wgZm91bmQg
PSBmYWxzZTsKKworCWlmIChpaXIgJiBHRU44X0RFX01JU0NfR1NFKSB7CisJCWludGVsX29wcmVn
aW9uX2FzbGVfaW50cihkZXZfcHJpdik7CisJCWZvdW5kID0gdHJ1ZTsKKwl9CisKKwlpZiAoaWly
ICYgR0VOOF9ERV9FRFBfUFNSKSB7CisJCXUzMiBwc3JfaWlyID0gSTkxNV9SRUFEKEVEUF9QU1Jf
SUlSKTsKKworCQlpbnRlbF9wc3JfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIHBzcl9paXIpOworCQlJ
OTE1X1dSSVRFKEVEUF9QU1JfSUlSLCBwc3JfaWlyKTsKKwkJZm91bmQgPSB0cnVlOworCX0KKwor
CWlmICghZm91bmQpCisJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBNaXNjIGludGVycnVwdFxu
Iik7Cit9CisKIHN0YXRpYyBpcnFyZXR1cm5fdAogZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQogewpAQCAtMjgzNiwy
OSArMjg1OCwxMiBAQCBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCiAJaWYgKG1hc3Rlcl9jdGwgJiBHRU44X0RFX01J
U0NfSVJRKSB7CiAJCWlpciA9IEk5MTVfUkVBRChHRU44X0RFX01JU0NfSUlSKTsKIAkJaWYgKGlp
cikgewotCQkJYm9vbCBmb3VuZCA9IGZhbHNlOwotCiAJCQlJOTE1X1dSSVRFKEdFTjhfREVfTUlT
Q19JSVIsIGlpcik7CiAJCQlyZXQgPSBJUlFfSEFORExFRDsKLQotCQkJaWYgKGlpciAmIEdFTjhf
REVfTUlTQ19HU0UpIHsKLQkJCQlpbnRlbF9vcHJlZ2lvbl9hc2xlX2ludHIoZGV2X3ByaXYpOwot
CQkJCWZvdW5kID0gdHJ1ZTsKLQkJCX0KLQotCQkJaWYgKGlpciAmIEdFTjhfREVfRURQX1BTUikg
ewotCQkJCXUzMiBwc3JfaWlyID0gSTkxNV9SRUFEKEVEUF9QU1JfSUlSKTsKLQotCQkJCWludGVs
X3Bzcl9pcnFfaGFuZGxlcihkZXZfcHJpdiwgcHNyX2lpcik7Ci0JCQkJSTkxNV9XUklURShFRFBf
UFNSX0lJUiwgcHNyX2lpcik7Ci0JCQkJZm91bmQgPSB0cnVlOwotCQkJfQotCi0JCQlpZiAoIWZv
dW5kKQotCQkJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBNaXNjIGludGVycnVwdFxuIik7Ci0J
CX0KLQkJZWxzZQorCQkJZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKGRldl9wcml2LCBpaXIpOwor
CQl9IGVsc2UgewogCQkJRFJNX0VSUk9SKCJUaGUgbWFzdGVyIGNvbnRyb2wgaW50ZXJydXB0IGxp
ZWQgKERFIE1JU0MpIVxuIik7CisJCX0KIAl9CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSAmJiAobWFzdGVyX2N0bCAmIEdFTjExX0RFX0hQRF9JUlEpKSB7Ci0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
