Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60CC3C941
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 12:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F428917E;
	Tue, 11 Jun 2019 10:45:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E32189159
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 10:45:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 03:45:55 -0700
X-ExtLoop1: 1
Received: from nmanovic-mobl.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.13.223])
 by orsmga003.jf.intel.com with ESMTP; 11 Jun 2019 03:45:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 11:45:48 +0100
Message-Id: <20190611104548.30545-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611104548.30545-1-tvrtko.ursulin@linux.intel.com>
References: <20190611104548.30545-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915: Remove I915_READ16 and I915_WRITE16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlbW92ZSBj
YWxsIHNpdGVzIGluIGZhdm91ciBvZiB1bmNvcmUgbW1pbyBhY2Nlc3NvcnMgYW5kIHJlbW92ZSB0
aGUgb2xkCm1hY3Jvcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8
ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgIHwgIDM3
ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgfCAg
IDMgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAgICAgIHwgMTA0ICsr
KysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAg
ICAgICAgIHwgIDQwICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAg
ICAgICAgICAgfCAgOTMgKysrKysrKysrKy0tLS0tLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDE2MSBp
bnNlcnRpb25zKCspLCAxMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ2J1ZmZlci5jCmluZGV4IDAzNzNhZjY0OGU3Mi4uYmUwYmEwYjc0MmY3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCkBAIC05ODYsMTAgKzk4
NiwxMCBAQCBpOHh4X2lycV9lbmFibGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQog
c3RhdGljIHZvaWQKIGk4eHhfaXJxX2Rpc2FibGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkx
NTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKIAotCWRl
dl9wcml2LT5pcnFfbWFzayB8PSBlbmdpbmUtPmlycV9lbmFibGVfbWFzazsKLQlJOTE1X1dSSVRF
MTYoR0VOMl9JTVIsIGRldl9wcml2LT5pcnFfbWFzayk7CisJaTkxNS0+aXJxX21hc2sgfD0gZW5n
aW5lLT5pcnFfZW5hYmxlX21hc2s7CisJaW50ZWxfdW5jb3JlX3dyaXRlMTYoJmk5MTUtPnVuY29y
ZSwgR0VOMl9JTVIsIGk5MTUtPmlycV9tYXNrKTsKIH0KIAogc3RhdGljIGludApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCAyZTc5ZjBlNGM1YWYuLmMwYzYzNTI1MzJkNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTEwMDAsNiArMTAwMCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGk5MTVfZXJyb3Jfc3RhdGVfZm9wcyA9IHsK
IHN0YXRpYyBpbnQgaTkxNV9mcmVxdWVuY3lfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KnVudXNlZCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3Rv
X2k5MTUobS0+cHJpdmF0ZSk7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9w
cml2LT51bmNvcmU7CiAJc3RydWN0IGludGVsX3JwcyAqcnBzID0gJmRldl9wcml2LT5ndF9wbS5y
cHM7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJaW50IHJldCA9IDA7CkBAIC0xMDA3LDgg
KzEwMDgsOCBAQCBzdGF0aWMgaW50IGk5MTVfZnJlcXVlbmN5X2luZm8oc3RydWN0IHNlcV9maWxl
ICptLCB2b2lkICp1bnVzZWQpCiAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KGRldl9w
cml2KTsKIAogCWlmIChJU19HRU4oZGV2X3ByaXYsIDUpKSB7Ci0JCXUxNiByZ3Zzd2N0bCA9IEk5
MTVfUkVBRDE2KE1FTVNXQ1RMKTsKLQkJdTE2IHJndnN0YXQgPSBJOTE1X1JFQUQxNihNRU1TVEFU
X0lMSyk7CisJCXUxNiByZ3Zzd2N0bCA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBNRU1T
V0NUTCk7CisJCXUxNiByZ3ZzdGF0ID0gaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUsIE1FTVNU
QVRfSUxLKTsKIAogCQlzZXFfcHJpbnRmKG0sICJSZXF1ZXN0ZWQgUC1zdGF0ZTogJWRcbiIsIChy
Z3Zzd2N0bCA+PiA4KSAmIDB4Zik7CiAJCXNlcV9wcmludGYobSwgIlJlcXVlc3RlZCBWSUQ6ICVk
XG4iLCByZ3Zzd2N0bCAmIDB4M2YpOwpAQCAtMTMzMCwxMyArMTMzMSwxNCBAQCBzdGF0aWMgaW50
IGk5MTVfcmVzZXRfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIAogc3Rh
dGljIGludCBpcm9ubGFrZV9kcnBjX2luZm8oc3RydWN0IHNlcV9maWxlICptKQogewotCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsK
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRl
KTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwogCXUzMiBy
Z3Ztb2RlY3RsLCByc3RkYnljdGw7CiAJdTE2IGNyc3RhbmR2aWQ7CiAKLQlyZ3Ztb2RlY3RsID0g
STkxNV9SRUFEKE1FTU1PREVDVEwpOwotCXJzdGRieWN0bCA9IEk5MTVfUkVBRChSU1REQllDVEwp
OwotCWNyc3RhbmR2aWQgPSBJOTE1X1JFQUQxNihDUlNUQU5EVklEKTsKKwlyZ3Ztb2RlY3RsID0g
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBNRU1NT0RFQ1RMKTsKKwlyc3RkYnljdGwgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIFJTVERCWUNUTCk7CisJY3JzdGFuZHZpZCA9IGludGVsX3Vu
Y29yZV9yZWFkMTYodW5jb3JlLCBDUlNUQU5EVklEKTsKIAogCXNlcV9wcmludGYobSwgIkhEIGJv
b3N0OiAlc1xuIiwgeWVzbm8ocmd2bW9kZWN0bCAmIE1FTU1PREVfQk9PU1RfRU4pKTsKIAlzZXFf
cHJpbnRmKG0sICJCb29zdCBmcmVxOiAlZFxuIiwKQEAgLTE5MTksNiArMTkyMSw3IEBAIHN0YXRp
YyBjb25zdCBjaGFyICpzd2l6emxlX3N0cmluZyh1bnNpZ25lZCBzd2l6emxlKQogc3RhdGljIGlu
dCBpOTE1X3N3aXp6bGVfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiB7CiAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZh
dGUpOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwog
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCiAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1f
Z2V0KGRldl9wcml2KTsKQEAgLTE5MzAsMzAgKzE5MzMsMzAgQEAgc3RhdGljIGludCBpOTE1X3N3
aXp6bGVfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAKIAlpZiAoSVNfR0VO
X1JBTkdFKGRldl9wcml2LCAzLCA0KSkgewogCQlzZXFfcHJpbnRmKG0sICJEREMgPSAweCUwOHhc
biIsCi0JCQkgICBJOTE1X1JFQUQoRENDKSk7CisJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIERDQykpOwogCQlzZXFfcHJpbnRmKG0sICJEREMyID0gMHglMDh4XG4iLAotCQkJICAgSTkx
NV9SRUFEKERDQzIpKTsKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRENDMikpOwog
CQlzZXFfcHJpbnRmKG0sICJDMERSQjMgPSAweCUwNHhcbiIsCi0JCQkgICBJOTE1X1JFQUQxNihD
MERSQjMpKTsKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBDMERSQjMpKTsKIAkJ
c2VxX3ByaW50ZihtLCAiQzFEUkIzID0gMHglMDR4XG4iLAotCQkJICAgSTkxNV9SRUFEMTYoQzFE
UkIzKSk7CisJCQkgICBpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29yZSwgQzFEUkIzKSk7CiAJfSBl
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDYpIHsKIAkJc2VxX3ByaW50ZihtLCAiTUFE
X0RJTU1fQzAgPSAweCUwOHhcbiIsCi0JCQkgICBJOTE1X1JFQUQoTUFEX0RJTU1fQzApKTsKKwkJ
CSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgTUFEX0RJTU1fQzApKTsKIAkJc2VxX3ByaW50
ZihtLCAiTUFEX0RJTU1fQzEgPSAweCUwOHhcbiIsCi0JCQkgICBJOTE1X1JFQUQoTUFEX0RJTU1f
QzEpKTsKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgTUFEX0RJTU1fQzEpKTsKIAkJ
c2VxX3ByaW50ZihtLCAiTUFEX0RJTU1fQzIgPSAweCUwOHhcbiIsCi0JCQkgICBJOTE1X1JFQUQo
TUFEX0RJTU1fQzIpKTsKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgTUFEX0RJTU1f
QzIpKTsKIAkJc2VxX3ByaW50ZihtLCAiVElMRUNUTCA9IDB4JTA4eFxuIiwKLQkJCSAgIEk5MTVf
UkVBRChUSUxFQ1RMKSk7CisJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRJTEVDVEwp
KTsKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOCkKIAkJCXNlcV9wcmludGYobSwgIkdB
TVRBUkJNT0RFID0gMHglMDh4XG4iLAotCQkJCSAgIEk5MTVfUkVBRChHQU1UQVJCTU9ERSkpOwor
CQkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FNVEFSQk1PREUpKTsKIAkJZWxzZQog
CQkJc2VxX3ByaW50ZihtLCAiQVJCX01PREUgPSAweCUwOHhcbiIsCi0JCQkJICAgSTkxNV9SRUFE
KEFSQl9NT0RFKSk7CisJCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBBUkJfTU9ERSkp
OwogCQlzZXFfcHJpbnRmKG0sICJESVNQX0FSQl9DVEwgPSAweCUwOHhcbiIsCi0JCQkgICBJOTE1
X1JFQUQoRElTUF9BUkJfQ1RMKSk7CisJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERJ
U1BfQVJCX0NUTCkpOwogCX0KIAogCWlmIChkZXZfcHJpdi0+cXVpcmtzICYgUVVJUktfUElOX1NX
SVpaTEVEX1BBR0VTKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggNjY0OThkMDEwYzM5Li5i
MzliNmU1MjYxODkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjg0MSw5ICsyODQxLDYg
QEAgZXh0ZXJuIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9zdGF0ZShzdHJ1Y3QgZHJt
X2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLAogI2RlZmluZSBfX0k5MTVfUkVHX09QKG9wX18sIGRl
dl9wcml2X18sIC4uLikgXAogCWludGVsX3VuY29yZV8jI29wX18oJihkZXZfcHJpdl9fKS0+dW5j
b3JlLCBfX1ZBX0FSR1NfXykKIAotI2RlZmluZSBJOTE1X1JFQUQxNihyZWdfXykJICAgX19JOTE1
X1JFR19PUChyZWFkMTYsIGRldl9wcml2LCAocmVnX18pKQotI2RlZmluZSBJOTE1X1dSSVRFMTYo
cmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlMTYsIGRldl9wcml2LCAocmVnX18pLCAo
dmFsX18pKQotCiAjZGVmaW5lIEk5MTVfUkVBRChyZWdfXykJIF9fSTkxNV9SRUdfT1AocmVhZCwg
ZGV2X3ByaXYsIChyZWdfXykpCiAjZGVmaW5lIEk5MTVfV1JJVEUocmVnX18sIHZhbF9fKSBfX0k5
MTVfUkVHX09QKHdyaXRlLCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggYTUyM2JmMDUwYTI1Li45Y2FmOTFkOThiMjcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtMTU3Niw3ICsxNTc2LDgg
QEAgc3RhdGljIHZvaWQgY2FwdHVyZV91Y19zdGF0ZShzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVy
cm9yKQogLyogQ2FwdHVyZSBhbGwgcmVnaXN0ZXJzIHdoaWNoIGRvbid0IGZpdCBpbnRvIGFub3Ro
ZXIgY2F0ZWdvcnkuICovCiBzdGF0aWMgdm9pZCBjYXB0dXJlX3JlZ19zdGF0ZShzdHJ1Y3QgaTkx
NV9ncHVfc3RhdGUgKmVycm9yKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IGVycm9yLT5pOTE1OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZXJyb3It
Pmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKIAlp
bnQgaTsKIAogCS8qIEdlbmVyYWwgb3JnYW5pemF0aW9uCkBAIC0xNTg4LDcxICsxNTg5LDg0IEBA
IHN0YXRpYyB2b2lkIGNhcHR1cmVfcmVnX3N0YXRlKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJy
b3IpCiAJICovCiAKIAkvKiAxOiBSZWdpc3RlcnMgc3BlY2lmaWMgdG8gYSBzaW5nbGUgZ2VuZXJh
dGlvbiAqLwotCWlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSkgewotCQllcnJvci0+Z3RpZXJb
MF0gPSBJOTE1X1JFQUQoR1RJRVIpOwotCQllcnJvci0+aWVyID0gSTkxNV9SRUFEKFZMVl9JRVIp
OwotCQllcnJvci0+Zm9yY2V3YWtlID0gSTkxNV9SRUFEX0ZXKEZPUkNFV0FLRV9WTFYpOworCWlm
IChJU19WQUxMRVlWSUVXKGk5MTUpKSB7CisJCWVycm9yLT5ndGllclswXSA9IGludGVsX3VuY29y
ZV9yZWFkKHVuY29yZSwgR1RJRVIpOworCQllcnJvci0+aWVyID0gaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBWTFZfSUVSKTsKKwkJZXJyb3ItPmZvcmNld2FrZSA9IGludGVsX3VuY29yZV9yZWFk
X2Z3KHVuY29yZSwgRk9SQ0VXQUtFX1ZMVik7CiAJfQogCi0JaWYgKElTX0dFTihkZXZfcHJpdiwg
NykpCi0JCWVycm9yLT5lcnJfaW50ID0gSTkxNV9SRUFEKEdFTjdfRVJSX0lOVCk7CisJaWYgKElT
X0dFTihpOTE1LCA3KSkKKwkJZXJyb3ItPmVycl9pbnQgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIEdFTjdfRVJSX0lOVCk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KSB7Ci0J
CWVycm9yLT5mYXVsdF9kYXRhMCA9IEk5MTVfUkVBRChHRU44X0ZBVUxUX1RMQl9EQVRBMCk7Ci0J
CWVycm9yLT5mYXVsdF9kYXRhMSA9IEk5MTVfUkVBRChHRU44X0ZBVUxUX1RMQl9EQVRBMSk7CisJ
aWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KSB7CisJCWVycm9yLT5mYXVsdF9kYXRhMCA9IGludGVs
X3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQkJCSAgICAgICBHRU44X0ZBVUxUX1RMQl9EQVRBMCk7
CisJCWVycm9yLT5mYXVsdF9kYXRhMSA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQkJ
CSAgICAgICBHRU44X0ZBVUxUX1RMQl9EQVRBMSk7CiAJfQogCi0JaWYgKElTX0dFTihkZXZfcHJp
diwgNikpIHsKLQkJZXJyb3ItPmZvcmNld2FrZSA9IEk5MTVfUkVBRF9GVyhGT1JDRVdBS0UpOwot
CQllcnJvci0+Z2FiX2N0bCA9IEk5MTVfUkVBRChHQUJfQ1RMKTsKLQkJZXJyb3ItPmdmeF9tb2Rl
ID0gSTkxNV9SRUFEKEdGWF9NT0RFKTsKKwlpZiAoSVNfR0VOKGk5MTUsIDYpKSB7CisJCWVycm9y
LT5mb3JjZXdha2UgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEZPUkNFV0FLRSk7CisJ
CWVycm9yLT5nYWJfY3RsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHQUJfQ1RMKTsKKwkJ
ZXJyb3ItPmdmeF9tb2RlID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRlhfTU9ERSk7CiAJ
fQogCiAJLyogMjogUmVnaXN0ZXJzIHdoaWNoIGJlbG9uZyB0byBtdWx0aXBsZSBnZW5lcmF0aW9u
cyAqLwotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDcpCi0JCWVycm9yLT5mb3JjZXdha2Ug
PSBJOTE1X1JFQURfRlcoRk9SQ0VXQUtFX01UKTsKKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDcp
CisJCWVycm9yLT5mb3JjZXdha2UgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEZPUkNF
V0FLRV9NVCk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA2KSB7Ci0JCWVycm9yLT5k
ZXJybXIgPSBJOTE1X1JFQUQoREVSUk1SKTsKLQkJZXJyb3ItPmVycm9yID0gSTkxNV9SRUFEKEVS
Uk9SX0dFTjYpOwotCQllcnJvci0+ZG9uZV9yZWcgPSBJOTE1X1JFQUQoRE9ORV9SRUcpOworCWlm
IChJTlRFTF9HRU4oaTkxNSkgPj0gNikgeworCQllcnJvci0+ZGVycm1yID0gaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBERVJSTVIpOworCQllcnJvci0+ZXJyb3IgPSBpbnRlbF91bmNvcmVfcmVh
ZCh1bmNvcmUsIEVSUk9SX0dFTjYpOworCQllcnJvci0+ZG9uZV9yZWcgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIERPTkVfUkVHKTsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSA1KQotCQllcnJvci0+Y2NpZCA9IEk5MTVfUkVBRChDQ0lEKFJFTkRFUl9SSU5HX0JBU0UpKTsK
KwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDUpCisJCWVycm9yLT5jY2lkID0gaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBDQ0lEKFJFTkRFUl9SSU5HX0JBU0UpKTsKIAogCS8qIDM6IEZlYXR1cmUg
c3BlY2lmaWMgcmVnaXN0ZXJzICovCi0JaWYgKElTX0dFTl9SQU5HRShkZXZfcHJpdiwgNiwgNykp
IHsKLQkJZXJyb3ItPmdhbV9lY29jaGsgPSBJOTE1X1JFQUQoR0FNX0VDT0NISyk7Ci0JCWVycm9y
LT5nYWNfZWNvID0gSTkxNV9SRUFEKEdBQ19FQ09fQklUUyk7CisJaWYgKElTX0dFTl9SQU5HRShp
OTE1LCA2LCA3KSkgeworCQllcnJvci0+Z2FtX2Vjb2NoayA9IGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgR0FNX0VDT0NISyk7CisJCWVycm9yLT5nYWNfZWNvID0gaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBHQUNfRUNPX0JJVFMpOwogCX0KIAogCS8qIDQ6IEV2ZXJ5dGhpbmcgZWxzZSAqLwot
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Ci0JCWVycm9yLT5pZXIgPSBJOTE1X1JF
QUQoR0VOOF9ERV9NSVNDX0lFUik7Ci0JCWVycm9yLT5ndGllclswXSA9IEk5MTVfUkVBRChHRU4x
MV9SRU5ERVJfQ09QWV9JTlRSX0VOQUJMRSk7Ci0JCWVycm9yLT5ndGllclsxXSA9IEk5MTVfUkVB
RChHRU4xMV9WQ1NfVkVDU19JTlRSX0VOQUJMRSk7Ci0JCWVycm9yLT5ndGllclsyXSA9IEk5MTVf
UkVBRChHRU4xMV9HVUNfU0dfSU5UUl9FTkFCTEUpOwotCQllcnJvci0+Z3RpZXJbM10gPSBJOTE1
X1JFQUQoR0VOMTFfR1BNX1dHQk9YUEVSRl9JTlRSX0VOQUJMRSk7Ci0JCWVycm9yLT5ndGllcls0
XSA9IEk5MTVfUkVBRChHRU4xMV9DUllQVE9fUlNWRF9JTlRSX0VOQUJMRSk7Ci0JCWVycm9yLT5n
dGllcls1XSA9IEk5MTVfUkVBRChHRU4xMV9HVU5JVF9DU01FX0lOVFJfRU5BQkxFKTsKKwlpZiAo
SU5URUxfR0VOKGk5MTUpID49IDExKSB7CisJCWVycm9yLT5pZXIgPSBpbnRlbF91bmNvcmVfcmVh
ZCh1bmNvcmUsIEdFTjhfREVfTUlTQ19JRVIpOworCQllcnJvci0+Z3RpZXJbMF0gPQorCQkJaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJCQkgIEdFTjExX1JFTkRFUl9DT1BZX0lOVFJfRU5B
QkxFKTsKKwkJZXJyb3ItPmd0aWVyWzFdID0KKwkJCWludGVsX3VuY29yZV9yZWFkKHVuY29yZSwg
R0VOMTFfVkNTX1ZFQ1NfSU5UUl9FTkFCTEUpOworCQllcnJvci0+Z3RpZXJbMl0gPQorCQkJaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU4xMV9HVUNfU0dfSU5UUl9FTkFCTEUpOworCQllcnJv
ci0+Z3RpZXJbM10gPQorCQkJaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJCQkgIEdFTjEx
X0dQTV9XR0JPWFBFUkZfSU5UUl9FTkFCTEUpOworCQllcnJvci0+Z3RpZXJbNF0gPQorCQkJaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJCQkgIEdFTjExX0NSWVBUT19SU1ZEX0lOVFJfRU5B
QkxFKTsKKwkJZXJyb3ItPmd0aWVyWzVdID0KKwkJCWludGVsX3VuY29yZV9yZWFkKHVuY29yZSwK
KwkJCQkJICBHRU4xMV9HVU5JVF9DU01FX0lOVFJfRU5BQkxFKTsKIAkJZXJyb3ItPm5ndGllciA9
IDY7Ci0JfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpIHsKLQkJZXJyb3ItPmll
ciA9IEk5MTVfUkVBRChHRU44X0RFX01JU0NfSUVSKTsKKwl9IGVsc2UgaWYgKElOVEVMX0dFTihp
OTE1KSA+PSA4KSB7CisJCWVycm9yLT5pZXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdF
TjhfREVfTUlTQ19JRVIpOwogCQlmb3IgKGkgPSAwOyBpIDwgNDsgaSsrKQotCQkJZXJyb3ItPmd0
aWVyW2ldID0gSTkxNV9SRUFEKEdFTjhfR1RfSUVSKGkpKTsKKwkJCWVycm9yLT5ndGllcltpXSA9
IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQkJCQkgICAgR0VOOF9HVF9JRVIoaSkpOwog
CQllcnJvci0+bmd0aWVyID0gNDsKLQl9IGVsc2UgaWYgKEhBU19QQ0hfU1BMSVQoZGV2X3ByaXYp
KSB7Ci0JCWVycm9yLT5pZXIgPSBJOTE1X1JFQUQoREVJRVIpOwotCQllcnJvci0+Z3RpZXJbMF0g
PSBJOTE1X1JFQUQoR1RJRVIpOworCX0gZWxzZSBpZiAoSEFTX1BDSF9TUExJVChpOTE1KSkgewor
CQllcnJvci0+aWVyID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBERUlFUik7CisJCWVycm9y
LT5ndGllclswXSA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR1RJRVIpOwogCQllcnJvci0+
bmd0aWVyID0gMTsKLQl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMikpIHsKLQkJZXJyb3It
PmllciA9IEk5MTVfUkVBRDE2KEdFTjJfSUVSKTsKLQl9IGVsc2UgaWYgKCFJU19WQUxMRVlWSUVX
KGRldl9wcml2KSkgewotCQllcnJvci0+aWVyID0gSTkxNV9SRUFEKEdFTjJfSUVSKTsKKwl9IGVs
c2UgaWYgKElTX0dFTihpOTE1LCAyKSkgeworCQllcnJvci0+aWVyID0gaW50ZWxfdW5jb3JlX3Jl
YWQxNih1bmNvcmUsIEdFTjJfSUVSKTsKKwl9IGVsc2UgaWYgKCFJU19WQUxMRVlWSUVXKGk5MTUp
KSB7CisJCWVycm9yLT5pZXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjJfSUVSKTsK
IAl9Ci0JZXJyb3ItPmVpciA9IEk5MTVfUkVBRChFSVIpOwotCWVycm9yLT5wZ3RibF9lciA9IEk5
MTVfUkVBRChQR1RCTF9FUik7CisJZXJyb3ItPmVpciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29y
ZSwgRUlSKTsKKwllcnJvci0+cGd0YmxfZXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFBH
VEJMX0VSKTsKIH0KIAogc3RhdGljIGNvbnN0IGNoYXIgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
aW5kZXggOWRiOWZiZDBlNzBjLi5jZDllZGRkZDY3MTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwpAQCAtMTIzMiwyMCArMTIzMiwyMyBAQCBpbnQgaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCiAKIHN0YXRpYyB2b2lkIGlyb25sYWtlX3Jwc19jaGFuZ2Vf
aXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogeworCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwogCXUzMiBidXN5X3Vw
LCBidXN5X2Rvd24sIG1heF9hdmcsIG1pbl9hdmc7CiAJdTggbmV3X2RlbGF5OwogCiAJc3Bpbl9s
b2NrKCZtY2hkZXZfbG9jayk7CiAKLQlJOTE1X1dSSVRFMTYoTUVNSU5UUlNUUywgSTkxNV9SRUFE
KE1FTUlOVFJTVFMpKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUxNih1bmNvcmUsCisJCQkgICAgIE1F
TUlOVFJTVFMsCisJCQkgICAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgTUVNSU5UUlNUUykp
OwogCiAJbmV3X2RlbGF5ID0gZGV2X3ByaXYtPmlwcy5jdXJfZGVsYXk7CiAKLQlJOTE1X1dSSVRF
MTYoTUVNSU5UUlNUUywgTUVNSU5UX0VWQUxfQ0hHKTsKLQlidXN5X3VwID0gSTkxNV9SRUFEKFJD
UFJFVkJTWVRVUEFWRyk7Ci0JYnVzeV9kb3duID0gSTkxNV9SRUFEKFJDUFJFVkJTWVRETkFWRyk7
Ci0JbWF4X2F2ZyA9IEk5MTVfUkVBRChSQ0JNQVhBVkcpOwotCW1pbl9hdmcgPSBJOTE1X1JFQUQo
UkNCTUlOQVZHKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUxNih1bmNvcmUsIE1FTUlOVFJTVFMsIE1F
TUlOVF9FVkFMX0NIRyk7CisJYnVzeV91cCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUkNQ
UkVWQlNZVFVQQVZHKTsKKwlidXN5X2Rvd24gPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFJD
UFJFVkJTWVRETkFWRyk7CisJbWF4X2F2ZyA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUkNC
TUFYQVZHKTsKKwltaW5fYXZnID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBSQ0JNSU5BVkcp
OwogCiAJLyogSGFuZGxlIFJDUyBjaGFuZ2UgcmVxdWVzdCBmcm9tIGh3ICovCiAJaWYgKGJ1c3lf
dXAgPiBtYXhfYXZnKSB7CkBAIC00MzI0LDggKzQzMjcsMTAgQEAgc3RhdGljIGludCBpOHh4X2ly
cV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCXN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwogCXUxNiBlbmFibGVfbWFzazsKIAotCUk5
MTVfV1JJVEUxNihFTVIsIH4oSTkxNV9FUlJPUl9QQUdFX1RBQkxFIHwKLQkJCSAgICBJOTE1X0VS
Uk9SX01FTU9SWV9SRUZSRVNIKSk7CisJaW50ZWxfdW5jb3JlX3dyaXRlMTYodW5jb3JlLAorCQkJ
ICAgICBFTVIsCisJCQkgICAgIH4oSTkxNV9FUlJPUl9QQUdFX1RBQkxFIHwKKwkJCSAgICAgICBJ
OTE1X0VSUk9SX01FTU9SWV9SRUZSRVNIKSk7CiAKIAkvKiBVbm1hc2sgdGhlIGludGVycnVwdHMg
dGhhdCB3ZSBhbHdheXMgd2FudCBvbi4gKi8KIAlkZXZfcHJpdi0+aXJxX21hc2sgPQpAQCAtNDM1
MSwxNyArNDM1NiwxOCBAQCBzdGF0aWMgaW50IGk4eHhfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB2b2lkIGk4eHhfZXJyb3Jf
aXJxX2FjayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCitzdGF0aWMgdm9pZCBp
OHh4X2Vycm9yX2lycV9hY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCQkgICAg
ICAgdTE2ICplaXIsIHUxNiAqZWlyX3N0dWNrKQogeworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9ICZpOTE1LT51bmNvcmU7CiAJdTE2IGVtcjsKIAotCSplaXIgPSBJOTE1X1JFQUQxNihF
SVIpOworCSplaXIgPSBpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29yZSwgRUlSKTsKIAogCWlmICgq
ZWlyKQotCQlJOTE1X1dSSVRFMTYoRUlSLCAqZWlyKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlMTYo
dW5jb3JlLCBFSVIsICplaXIpOwogCi0JKmVpcl9zdHVjayA9IEk5MTVfUkVBRDE2KEVJUik7CisJ
KmVpcl9zdHVjayA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBFSVIpOwogCWlmICgqZWly
X3N0dWNrID09IDApCiAJCXJldHVybjsKIApAQCAtNDM3NSw5ICs0MzgxLDkgQEAgc3RhdGljIHZv
aWQgaTh4eF9lcnJvcl9pcnFfYWNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAkgKiAob3IgYnkgYSBHUFUgcmVzZXQpIHNvIHdlIG1hc2sgYW55IGJpdCB0aGF0CiAJICogcmVt
YWlucyBzZXQuCiAJICovCi0JZW1yID0gSTkxNV9SRUFEMTYoRU1SKTsKLQlJOTE1X1dSSVRFMTYo
RU1SLCAweGZmZmYpOwotCUk5MTVfV1JJVEUxNihFTVIsIGVtciB8ICplaXJfc3R1Y2spOworCWVt
ciA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBFTVIpOworCWludGVsX3VuY29yZV93cml0
ZTE2KHVuY29yZSwgRU1SLCAweGZmZmYpOworCWludGVsX3VuY29yZV93cml0ZTE2KHVuY29yZSwg
RU1SLCBlbXIgfCAqZWlyX3N0dWNrKTsKIH0KIAogc3RhdGljIHZvaWQgaTh4eF9lcnJvcl9pcnFf
aGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCkBAIC00NDQzLDcgKzQ0
NDksNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaTh4eF9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lk
ICphcmcpCiAJCXUxNiBlaXIgPSAwLCBlaXJfc3R1Y2sgPSAwOwogCQl1MTYgaWlyOwogCi0JCWlp
ciA9IEk5MTVfUkVBRDE2KEdFTjJfSUlSKTsKKwkJaWlyID0gaW50ZWxfdW5jb3JlX3JlYWQxNigm
ZGV2X3ByaXYtPnVuY29yZSwgR0VOMl9JSVIpOwogCQlpZiAoaWlyID09IDApCiAJCQlicmVhazsK
IApAQCAtNDQ1Niw3ICs0NDYyLDcgQEAgc3RhdGljIGlycXJldHVybl90IGk4eHhfaXJxX2hhbmRs
ZXIoaW50IGlycSwgdm9pZCAqYXJnKQogCQlpZiAoaWlyICYgSTkxNV9NQVNURVJfRVJST1JfSU5U
RVJSVVBUKQogCQkJaTh4eF9lcnJvcl9pcnFfYWNrKGRldl9wcml2LCAmZWlyLCAmZWlyX3N0dWNr
KTsKIAotCQlJOTE1X1dSSVRFMTYoR0VOMl9JSVIsIGlpcik7CisJCWludGVsX3VuY29yZV93cml0
ZTE2KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU4yX0lJUiwgaWlyKTsKIAogCQlpZiAoaWlyICYgSTkx
NV9VU0VSX0lOVEVSUlVQVCkKIAkJCWludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoZGV2X3By
aXYtPmVuZ2luZVtSQ1MwXSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA1YTY2NzllMmI2
ZWUuLjJjN2YzZWJjMDExNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0xOTEsOCArMTkx
LDggQEAgc3RhdGljIHZvaWQgaTkxNV9pcm9ubGFrZV9nZXRfbWVtX2ZyZXEoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUxNiBkZHJwbGwsIGNzaXBsbDsKIAotCWRkcnBs
bCA9IEk5MTVfUkVBRDE2KEREUk1QTEwxKTsKLQljc2lwbGwgPSBJOTE1X1JFQUQxNihDU0lQTEww
KTsKKwlkZHJwbGwgPSBpbnRlbF91bmNvcmVfcmVhZDE2KCZkZXZfcHJpdi0+dW5jb3JlLCBERFJN
UExMMSk7CisJY3NpcGxsID0gaW50ZWxfdW5jb3JlX3JlYWQxNigmZGV2X3ByaXYtPnVuY29yZSwg
Q1NJUExMMCk7CiAKIAlzd2l0Y2ggKGRkcnBsbCAmIDB4ZmYpIHsKIAljYXNlIDB4YzoKQEAgLTY0
MzIsMjYgKzY0MzIsMjcgQEAgYm9vbCBpcm9ubGFrZV9zZXRfZHJwcyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgdTggdmFsKQogCiBzdGF0aWMgdm9pZCBpcm9ubGFrZV9lbmFibGVfZHJw
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7CiAJdTMyIHJndm1vZGVjdGw7CiAJdTgg
Zm1heCwgZm1pbiwgZnN0YXJ0LCB2c3RhcnQ7CiAKIAlzcGluX2xvY2tfaXJxKCZtY2hkZXZfbG9j
ayk7CiAKLQlyZ3Ztb2RlY3RsID0gSTkxNV9SRUFEKE1FTU1PREVDVEwpOworCXJndm1vZGVjdGwg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIE1FTU1PREVDVEwpOwogCiAJLyogRW5hYmxlIHRl
bXAgcmVwb3J0aW5nICovCi0JSTkxNV9XUklURTE2KFBNTUlTQywgSTkxNV9SRUFEKFBNTUlTQykg
fCBNQ1BQQ0VfRU4pOwotCUk5MTVfV1JJVEUxNihUU0MxLCBJOTE1X1JFQUQoVFNDMSkgfCBUU0Up
OworCWludGVsX3VuY29yZV93cml0ZTE2KHVuY29yZSwgUE1NSVNDLCBJOTE1X1JFQUQoUE1NSVND
KSB8IE1DUFBDRV9FTik7CisJaW50ZWxfdW5jb3JlX3dyaXRlMTYodW5jb3JlLCBUU0MxLCBJOTE1
X1JFQUQoVFNDMSkgfCBUU0UpOwogCiAJLyogMTAwbXMgUkMgZXZhbHVhdGlvbiBpbnRlcnZhbHMg
Ki8KLQlJOTE1X1dSSVRFKFJDVVBFSSwgMTAwMDAwKTsKLQlJOTE1X1dSSVRFKFJDRE5FSSwgMTAw
MDAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBSQ1VQRUksIDEwMDAwMCk7CisJaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgUkNETkVJLCAxMDAwMDApOwogCiAJLyogU2V0IG1heC9t
aW4gdGhyZXNob2xkcyB0byA5MG1zIGFuZCA4MG1zIHJlc3BlY3RpdmVseSAqLwotCUk5MTVfV1JJ
VEUoUkNCTUFYQVZHLCA5MDAwMCk7Ci0JSTkxNV9XUklURShSQ0JNSU5BVkcsIDgwMDAwKTsKKwlp
bnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBSQ0JNQVhBVkcsIDkwMDAwKTsKKwlpbnRlbF91bmNv
cmVfd3JpdGUodW5jb3JlLCBSQ0JNSU5BVkcsIDgwMDAwKTsKIAotCUk5MTVfV1JJVEUoTUVNSUhZ
U1QsIDEpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIE1FTUlIWVNULCAxKTsKIAogCS8q
IFNldCB1cCBtaW4sIG1heCwgYW5kIGN1ciBmb3IgaW50ZXJydXB0IGhhbmRsaW5nICovCiAJZm1h
eCA9IChyZ3Ztb2RlY3RsICYgTUVNTU9ERV9GTUFYX01BU0spID4+IE1FTU1PREVfRk1BWF9TSElG
VDsKQEAgLTY0NTksOCArNjQ2MCw4IEBAIHN0YXRpYyB2b2lkIGlyb25sYWtlX2VuYWJsZV9kcnBz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlmc3RhcnQgPSAocmd2bW9kZWN0
bCAmIE1FTU1PREVfRlNUQVJUX01BU0spID4+CiAJCU1FTU1PREVfRlNUQVJUX1NISUZUOwogCi0J
dnN0YXJ0ID0gKEk5MTVfUkVBRChQWFZGUkVRKGZzdGFydCkpICYgUFhWRlJFUV9QWF9NQVNLKSA+
PgotCQlQWFZGUkVRX1BYX1NISUZUOworCXZzdGFydCA9IChpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIFBYVkZSRVEoZnN0YXJ0KSkgJgorCQkgIFBYVkZSRVFfUFhfTUFTSykgPj4gUFhWRlJFUV9Q
WF9TSElGVDsKIAogCWRldl9wcml2LT5pcHMuZm1heCA9IGZtYXg7IC8qIElQUyBjYWxsYmFjayB3
aWxsIGluY3JlYXNlIHRoaXMgKi8KIAlkZXZfcHJpdi0+aXBzLmZzdGFydCA9IGZzdGFydDsKQEAg
LTY0NzIsNTMgKzY0NzMsNjYgQEAgc3RhdGljIHZvaWQgaXJvbmxha2VfZW5hYmxlX2RycHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCURSTV9ERUJVR19EUklWRVIoImZtYXg6
ICVkLCBmbWluOiAlZCwgZnN0YXJ0OiAlZFxuIiwKIAkJCSBmbWF4LCBmbWluLCBmc3RhcnQpOwog
Ci0JSTkxNV9XUklURShNRU1JTlRSRU4sIE1FTUlOVF9DWF9TVVBSX0VOIHwgTUVNSU5UX0VWQUxf
Q0hHX0VOKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJICAgTUVNSU5UUkVOLAor
CQkJICAgTUVNSU5UX0NYX1NVUFJfRU4gfCBNRU1JTlRfRVZBTF9DSEdfRU4pOwogCiAJLyoKIAkg
KiBJbnRlcnJ1cHRzIHdpbGwgYmUgZW5hYmxlZCBpbiBpcm9ubGFrZV9pcnFfcG9zdGluc3RhbGwK
IAkgKi8KIAotCUk5MTVfV1JJVEUoVklEU1RBUlQsIHZzdGFydCk7Ci0JUE9TVElOR19SRUFEKFZJ
RFNUQVJUKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBWSURTVEFSVCwgdnN0YXJ0KTsK
KwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKHVuY29yZSwgVklEU1RBUlQpOwogCiAJcmd2bW9k
ZWN0bCB8PSBNRU1NT0RFX1NXTU9ERV9FTjsKLQlJOTE1X1dSSVRFKE1FTU1PREVDVEwsIHJndm1v
ZGVjdGwpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIE1FTU1PREVDVEwsIHJndm1vZGVj
dGwpOwogCi0JaWYgKHdhaXRfZm9yX2F0b21pYygoSTkxNV9SRUFEKE1FTVNXQ1RMKSAmIE1FTUNU
TF9DTURfU1RTKSA9PSAwLCAxMCkpCisJaWYgKHdhaXRfZm9yX2F0b21pYygoaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBNRU1TV0NUTCkgJgorCQkJICAgICBNRU1DVExfQ01EX1NUUykgPT0gMCwg
MTApKQogCQlEUk1fRVJST1IoInN0dWNrIHRyeWluZyB0byBjaGFuZ2UgcGVyZiBtb2RlXG4iKTsK
IAltZGVsYXkoMSk7CiAKIAlpcm9ubGFrZV9zZXRfZHJwcyhkZXZfcHJpdiwgZnN0YXJ0KTsKIAot
CWRldl9wcml2LT5pcHMubGFzdF9jb3VudDEgPSBJOTE1X1JFQUQoRE1JRUMpICsKLQkJSTkxNV9S
RUFEKEREUkVDKSArIEk5MTVfUkVBRChDU0lFQyk7CisJZGV2X3ByaXYtPmlwcy5sYXN0X2NvdW50
MSA9CisJCWludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRE1JRUMpICsKKwkJaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBERFJFQykgKworCQlpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIENTSUVD
KTsKIAlkZXZfcHJpdi0+aXBzLmxhc3RfdGltZTEgPSBqaWZmaWVzX3RvX21zZWNzKGppZmZpZXMp
OwotCWRldl9wcml2LT5pcHMubGFzdF9jb3VudDIgPSBJOTE1X1JFQUQoR0ZYRUMpOworCWRldl9w
cml2LT5pcHMubGFzdF9jb3VudDIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdGWEVDKTsK
IAlkZXZfcHJpdi0+aXBzLmxhc3RfdGltZTIgPSBrdGltZV9nZXRfcmF3X25zKCk7CiAKIAlzcGlu
X3VubG9ja19pcnEoJm1jaGRldl9sb2NrKTsKIH0KIAotc3RhdGljIHZvaWQgaXJvbmxha2VfZGlz
YWJsZV9kcnBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lk
IGlyb25sYWtlX2Rpc2FibGVfZHJwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsK
KwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwogCXUxNiByZ3Zz
d2N0bDsKIAogCXNwaW5fbG9ja19pcnEoJm1jaGRldl9sb2NrKTsKIAotCXJndnN3Y3RsID0gSTkx
NV9SRUFEMTYoTUVNU1dDVEwpOworCXJndnN3Y3RsID0gaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNv
cmUsIE1FTVNXQ1RMKTsKIAogCS8qIEFjayBpbnRlcnJ1cHRzLCBkaXNhYmxlIEVGQyBpbnRlcnJ1
cHQgKi8KLQlJOTE1X1dSSVRFKE1FTUlOVFJFTiwgSTkxNV9SRUFEKE1FTUlOVFJFTikgJiB+TUVN
SU5UX0VWQUxfQ0hHX0VOKTsKLQlJOTE1X1dSSVRFKE1FTUlOVFJTVFMsIE1FTUlOVF9FVkFMX0NI
Ryk7Ci0JSTkxNV9XUklURShERUlFUiwgSTkxNV9SRUFEKERFSUVSKSAmIH5ERV9QQ1VfRVZFTlQp
OwotCUk5MTVfV1JJVEUoREVJSVIsIERFX1BDVV9FVkVOVCk7Ci0JSTkxNV9XUklURShERUlNUiwg
STkxNV9SRUFEKERFSU1SKSB8IERFX1BDVV9FVkVOVCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVu
Y29yZSwKKwkJCSAgIE1FTUlOVFJFTiwKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwg
TUVNSU5UUkVOKSAmCisJCQkgICB+TUVNSU5UX0VWQUxfQ0hHX0VOKTsKKwlpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLCBNRU1JTlRSU1RTLCBNRU1JTlRfRVZBTF9DSEcpOworCWludGVsX3VuY29y
ZV93cml0ZSh1bmNvcmUsCisJCQkgICBERUlFUiwKKwkJCSAgIGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgREVJRVIpICYgfkRFX1BDVV9FVkVOVCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29y
ZSwgREVJSVIsIERFX1BDVV9FVkVOVCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJ
CSAgIERFSU1SLAorCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBERUlNUikgfCBERV9Q
Q1VfRVZFTlQpOwogCiAJLyogR28gYmFjayB0byB0aGUgc3RhcnRpbmcgZnJlcXVlbmN5ICovCi0J
aXJvbmxha2Vfc2V0X2RycHMoZGV2X3ByaXYsIGRldl9wcml2LT5pcHMuZnN0YXJ0KTsKKwlpcm9u
bGFrZV9zZXRfZHJwcyhpOTE1LCBpOTE1LT5pcHMuZnN0YXJ0KTsKIAltZGVsYXkoMSk7CiAJcmd2
c3djdGwgfD0gTUVNQ1RMX0NNRF9TVFM7Ci0JSTkxNV9XUklURShNRU1TV0NUTCwgcmd2c3djdGwp
OworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIE1FTVNXQ1RMLCByZ3Zzd2N0bCk7CiAJbWRl
bGF5KDEpOwogCiAJc3Bpbl91bmxvY2tfaXJxKCZtY2hkZXZfbG9jayk7CkBAIC05NTA0LDE2ICs5
NTE4LDIxIEBAIHN0YXRpYyB2b2lkIGc0eF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2b2lkIGk5NjVnbV9pbml0X2Nsb2NrX2dh
dGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JSTkxNV9XUklURShS
RU5DTEtfR0FURV9EMSwgSTk2NV9SQ0NfQ0xPQ0tfR0FURV9ESVNBQkxFKTsKLQlJOTE1X1dSSVRF
KFJFTkNMS19HQVRFX0QyLCAwKTsKLQlJOTE1X1dSSVRFKERTUENMS19HQVRFX0QsIDApOwotCUk5
MTVfV1JJVEUoUkFNQ0xLX0dBVEVfRCwgMCk7Ci0JSTkxNV9XUklURTE2KERFVUMsIDApOwotCUk5
MTVfV1JJVEUoTUlfQVJCX1NUQVRFLAotCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoTUlfQVJCX0RJ
U1BMQVlfVFJJQ0tMRV9GRUVEX0RJU0FCTEUpKTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNv
cmUgPSAmZGV2X3ByaXYtPnVuY29yZTsKKworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIFJF
TkNMS19HQVRFX0QxLCBJOTY1X1JDQ19DTE9DS19HQVRFX0RJU0FCTEUpOworCWludGVsX3VuY29y
ZV93cml0ZSh1bmNvcmUsIFJFTkNMS19HQVRFX0QyLCAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUo
dW5jb3JlLCBEU1BDTEtfR0FURV9ELCAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBS
QU1DTEtfR0FURV9ELCAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUxNih1bmNvcmUsIERFVUMsIDAp
OworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBNSV9BUkJfU1RBVEUsCisJCQkg
ICBfTUFTS0VEX0JJVF9FTkFCTEUoTUlfQVJCX0RJU1BMQVlfVFJJQ0tMRV9GRUVEX0RJU0FCTEUp
KTsKIAogCS8qIFdhRGlzYWJsZV9SZW5kZXJDYWNoZV9PcGVyYXRpb25hbEZsdXNoOmdlbjQgKi8K
LQlJOTE1X1dSSVRFKENBQ0hFX01PREVfMCwgX01BU0tFRF9CSVRfRElTQUJMRShSQ19PUF9GTFVT
SF9FTkFCTEUpKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJICAgQ0FDSEVfTU9E
RV8wLAorCQkJICAgX01BU0tFRF9CSVRfRElTQUJMRShSQ19PUF9GTFVTSF9FTkFCTEUpKTsKIH0K
IAogc3RhdGljIHZvaWQgaTk2NWdfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
