Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5151FDA60
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6286E25D;
	Thu, 18 Jun 2020 00:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0A16E209
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: 1vgmiK8waa68aFUkcZUaK5rBlv5853sAJ2i9JMtebuG8EfuUbyJCYI6CeL4gNL4RUXO8tvfwOS
 cd7/re/nvsAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:51 -0700
IronPort-SDR: oDM8JgUfZbkOJPNxM6zqHuLMNVSKES4ZfHbn8H+vFQwDKLOrsxwMMhWDkENgmd0kioEar8Ip9V
 j+zTh2EepxYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011850"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:15 -0700
Message-Id: <20200618004240.16263-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/32] drm/i915/dg1: add initial DG-1
 definitions
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QnNwZWM6IDMzNjE3LCAzMzYxNwoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRl
bC5jb20+CkNjOiBWYW5zaGlkaGFyIEtvbmRhIDx2YW5zaGlkaGFyLnIua29uZGFAaW50ZWwuY29t
PgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBcmF2
aW5kIElkZGFtc2V0dHkgPGFyYXZpbmQuaWRkYW1zZXR0eUBpbnRlbC5jb20+CkNjOiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFu
dWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICA3ICsrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgIDEgKwogNCBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMmY4MDU3YTBiMjI4MC4uZjc5
YzA5MjU3ZWI2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNDI4LDYgKzE0MjgsNyBA
QCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNk
ZWZpbmUgSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpCUlTX1BMQVRGT1JNKGRldl9wcml2LCBJTlRF
TF9FTEtIQVJUTEFLRSkKICNkZWZpbmUgSVNfVElHRVJMQUtFKGRldl9wcml2KQlJU19QTEFURk9S
TShkZXZfcHJpdiwgSU5URUxfVElHRVJMQUtFKQogI2RlZmluZSBJU19ST0NLRVRMQUtFKGRldl9w
cml2KQlJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfUk9DS0VUTEFLRSkKKyNkZWZpbmUgSVNf
REcxKGRldl9wcml2KSAgICAgICAgSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0RHMSkKICNk
ZWZpbmUgSVNfSFNXX0VBUkxZX1NEVihkZXZfcHJpdikgKElTX0hBU1dFTEwoZGV2X3ByaXYpICYm
IFwKIAkJCQkgICAgKElOVEVMX0RFVklEKGRldl9wcml2KSAmIDB4RkYwMCkgPT0gMHgwQzAwKQog
I2RlZmluZSBJU19CRFdfVUxUKGRldl9wcml2KSBcCkBAIC0xNTU2LDYgKzE1NTcsMTIgQEAgSVNf
U1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5l
IElTX1JLTF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKIAkoSVNfUk9DS0VUTEFLRShwKSAmJiBJ
U19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQogCisjZGVmaW5lIERHMV9SRVZJRF9BMAkJMHgwCisj
ZGVmaW5lIERHMV9SRVZJRF9CMAkJMHgxCisKKyNkZWZpbmUgSVNfREcxX1JFVklEKHAsIHNpbmNl
LCB1bnRpbCkgXAorCShJU19ERzEocCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkKKwog
I2RlZmluZSBJU19MUChkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5pc19scCkKICNk
ZWZpbmUgSVNfR0VOOV9MUChkZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgSVNfTFAo
ZGV2X3ByaXYpKQogI2RlZmluZSBJU19HRU45X0JDKGRldl9wcml2KQkoSVNfR0VOKGRldl9wcml2
LCA5KSAmJiAhSVNfTFAoZGV2X3ByaXYpKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZTVm
ZGYxN2NkOWNkZC4uNThjY2VlYWEwZmZhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC04
OTYsOCArODk2LDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gcmts
X2luZm8gPSB7CiAKICNkZWZpbmUgR0VOMTJfREdGWF9GRUFUVVJFUyBcCiAJR0VOMTJfRkVBVFVS
RVMsIFwKKwkubWVtb3J5X3JlZ2lvbnMgPSBSRUdJT05fU01FTSB8IFJFR0lPTl9MTUVNLCBcCisJ
Lmhhc19tYXN0ZXJfdW5pdF9pcnEgPSAxLCBcCiAJLmlzX2RnZnggPSAxCiAKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfZGcxX2luZm8gPSB7CisJR0VOMTJfREdG
WF9GRUFUVVJFUywKKwlQTEFURk9STShJTlRFTF9ERzEpLAorCS5waXBlX21hc2sgPSBCSVQoUElQ
RV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKKwkucmVxdWly
ZV9mb3JjZV9wcm9iZSA9IDEsCisJLmVuZ2luZV9tYXNrID0KKwkJQklUKFJDUzApIHwgQklUKEJD
UzApIHwgQklUKFZFQ1MwKSB8CisJCUJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKK307CisKICN1bmRl
ZiBHRU4KICN1bmRlZiBQTEFURk9STQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYwppbmRleCA1NDRhYzYxZmJjMzYzLi4yZTQwYTY2NDlkMTQyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTYzLDYgKzYzLDcgQEAgc3RhdGljIGNv
bnN0IGNoYXIgKiBjb25zdCBwbGF0Zm9ybV9uYW1lc1tdID0gewogCVBMQVRGT1JNX05BTUUoRUxL
SEFSVExBS0UpLAogCVBMQVRGT1JNX05BTUUoVElHRVJMQUtFKSwKIAlQTEFURk9STV9OQU1FKFJP
Q0tFVExBS0UpLAorCVBMQVRGT1JNX05BTUUoREcxKSwKIH07CiAjdW5kZWYgUExBVEZPUk1fTkFN
RQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAppbmRleCA3NzBkMDcw
MDNjZTYwLi5iZGQyMWNkZTkxN2NjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmgKQEAgLTgyLDYgKzgyLDcgQEAgZW51bSBpbnRlbF9wbGF0Zm9ybSB7CiAJLyogZ2Vu
MTIgKi8KIAlJTlRFTF9USUdFUkxBS0UsCiAJSU5URUxfUk9DS0VUTEFLRSwKKwlJTlRFTF9ERzEs
CiAJSU5URUxfTUFYX1BMQVRGT1JNUwogfTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
