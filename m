Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4046282
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C58689A9B;
	Fri, 14 Jun 2019 15:18:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46ACB89A75
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:18:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:18:13 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2019 08:18:11 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 16:17:22 +0100
Message-Id: <20190614151731.17608-23-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 22/31] drm/i915: Move i915_gem_chipset_flush to
 intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgYWxp
Z25zIGJldHRlciB3aXRoIHRoZSByZXN0IG9mIHJlc3RydWN0dXJpbmcuCgpTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgIHwgIDUgKysrLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMgICAgICAgIHwgIDMgKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyB8ICA0ICsrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggICAgICAgICAgICAgIHwgMTAgKysrKysrKyst
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgICAgfCAxMiAr
KysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRz
LmMgIHwgIDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAg
ICAgICAgIHwgIDggLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X3JlcXVlc3QuYyAgIHwgMTAgKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2lndF9zcGlubmVyLmMgICAgfCAgNyArKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaWd0X3NwaW5uZXIuaCAgICB8ICAzICsrKwogMTIgZmlsZXMgY2hhbmdlZCwgNDMg
aW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNTI4ZWVhNDRkY2NmLi40YWUyNTUxNWU2
M2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YwpAQCAtMTQsNiArMTQsNyBAQAogCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgog
I2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHQuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgog
I2luY2x1ZGUgImd0L2ludGVsX2d0X3BtLmgiCiAKICNpbmNsdWRlICJpOTE1X2dlbV9pb2N0bHMu
aCIKQEAgLTk5Myw3ICs5OTQsNyBAQCBzdGF0aWMgdm9pZCByZWxvY19ncHVfZmx1c2goc3RydWN0
IHJlbG9jX2NhY2hlICpjYWNoZSkKIAlfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAoY2FjaGUt
PnJxLT5iYXRjaC0+b2JqLCAwLCBjYWNoZS0+cnFfc2l6ZSk7CiAJaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX21hcChjYWNoZS0+cnEtPmJhdGNoLT5vYmopOwogCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVz
aChjYWNoZS0+cnEtPmk5MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goY2FjaGUtPnJxLT5l
bmdpbmUtPmd0KTsKIAogCWk5MTVfcmVxdWVzdF9hZGQoY2FjaGUtPnJxKTsKIAljYWNoZS0+cnEg
PSBOVUxMOwpAQCAtMTk1Myw3ICsxOTU0LDcgQEAgc3RhdGljIGludCBlYl9tb3ZlX3RvX2dwdShz
dHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAllYi0+ZXhlYyA9IE5VTEw7CiAKIAkvKiBVbmNv
bmRpdGlvbmFsbHkgZmx1c2ggYW55IGNoaXBzZXQgY2FjaGVzIChmb3Igc3RyZWFtaW5nIHdyaXRl
cykuICovCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChlYi0+aTkxNSk7CisJaW50ZWxfZ3RfY2hp
cHNldF9mbHVzaChlYi0+ZW5naW5lLT5ndCk7CiAJcmV0dXJuIDA7CiAKIGVycl9za2lwOgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKaW5kZXggMmRlYWM5MzNjZjU5Li43
YjkwMGVlNGVkOGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9waHlzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYwpA
QCAtMTMsNiArMTMsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1fbGVnYWN5Lmg+IC8qIGZvciBkcm1f
cGNpLmghICovCiAjaW5jbHVkZSA8ZHJtL2RybV9wY2kuaD4KIAorI2luY2x1ZGUgImd0L2ludGVs
X2d0LmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3Qu
aCIKICNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCkBAIC02MCw3ICs2MSw3IEBAIHN0YXRp
YyBpbnQgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19waHlzKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopCiAJCXZhZGRyICs9IFBBR0VfU0laRTsKIAl9CiAKLQlpOTE1X2dlbV9jaGlw
c2V0X2ZsdXNoKHRvX2k5MTUob2JqLT5iYXNlLmRldikpOworCWludGVsX2d0X2NoaXBzZXRfZmx1
c2goJnRvX2k5MTUob2JqLT5iYXNlLmRldiktPmd0KTsKIAogCXN0ID0ga21hbGxvYyhzaXplb2Yo
KnN0KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFzdCkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwppbmRleCA3M2U2NjdiMzFjYzQuLjVhYTUyZWQ1
MTRiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdl
X3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMKQEAgLTEwLDYgKzEwLDggQEAKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgog
CisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKKwogI2luY2x1ZGUgImlndF9nZW1fdXRpbHMuaCIK
ICNpbmNsdWRlICJtb2NrX2NvbnRleHQuaCIKIApAQCAtOTI2LDcgKzkyOCw3IEBAIGdwdV93cml0
ZV9kdyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IG9mZnNldCwgdTMyIHZhbCkKIAl9CiAKIAkq
Y21kID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKGk5MTUp
OworCWludGVsX2d0X2NoaXBzZXRfZmx1c2godm1hLT52bS0+Z3QpOwogCiAJaTkxNV9nZW1fb2Jq
ZWN0X3VucGluX21hcChvYmopOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRleCA5
NTU1MDM1MDQ5NDQuLjViYzQ2MGQ2OGM4YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5j
CkBAIC0xNzcsNyArMTc3LDcgQEAgdm9pZCBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQogCWlmIChJTlRFTF9JTkZPKGk5MTUpLT5oYXNfY29oZXJlbnRfZ2d0
dCkKIAkJcmV0dXJuOwogCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChpOTE1KTsKKwlpbnRlbF9n
dF9jaGlwc2V0X2ZsdXNoKGd0KTsKIAogCXdpdGhfaW50ZWxfcnVudGltZV9wbShpOTE1LCB3YWtl
cmVmKSB7CiAJCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAppbmRleCAwNTFkNzA2OWRiNTUuLjhkODQ3MTZjM2IzYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCkBAIC05LDggKzksNyBAQAogCiAjaW5jbHVk
ZSAiZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfdHlwZXMu
aCIKLQotc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CisjaW5jbHVkZSAiaTkxNV9kcnYuaCIKIAog
dm9pZCBpbnRlbF9ndF9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KTsKIApAQCAtMjAsNCArMTksMTEgQEAgdm9pZCBpbnRlbF9ndF9jbGVhcl9l
cnJvcl9yZWdpc3RlcnMoc3RydWN0IGludGVsX2d0ICpndCwKIAogdm9pZCBpbnRlbF9ndF9mbHVz
aF9nZ3R0X3dyaXRlcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIAorc3RhdGljIGlubGluZSB2b2lk
IGludGVsX2d0X2NoaXBzZXRfZmx1c2goc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwl3bWIoKTsK
KwlpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA8IDYpCisJCWludGVsX2d0dF9jaGlwc2V0X2ZsdXNo
KCk7Cit9CisKICNlbmRpZiAvKiBfX0lOVEVMX0dUX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwppbmRleCA0NTM3OWE2M2UwMTMuLmU1ZWRhZDc0
MjU3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2No
ZWNrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMK
QEAgLTI1LDYgKzI1LDcgQEAKICNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+CiAKICNpbmNsdWRl
ICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgorI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCiAjaW5j
bHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCiAKICNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCkBA
IC00Myw2ICs0NCw3IEBACiAKIHN0cnVjdCBoYW5nIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpod3M7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4OwpAQCAtMTM1LDYgKzEzNyw4IEBAIGhhbmdfY3JlYXRlX3JlcXVl
c3Qoc3RydWN0IGhhbmcgKmgsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAl1MzIg
KmJhdGNoOwogCWludCBlcnI7CiAKKwloLT5ndCA9IGVuZ2luZS0+Z3Q7CisKIAlpZiAoaTkxNV9n
ZW1fb2JqZWN0X2lzX2FjdGl2ZShoLT5vYmopKSB7CiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7CiAJCXZvaWQgKnZhZGRyOwpAQCAtMjQyLDcgKzI0Niw3IEBAIGhhbmdfY3JlYXRl
X3JlcXVlc3Qoc3RydWN0IGhhbmcgKmgsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IAkJKmJhdGNoKysgPSBsb3dlcl8zMl9iaXRzKHZtYS0+bm9kZS5zdGFydCk7CiAJfQogCSpiYXRj
aCsrID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsgLyogbm90IHJlYWNoZWQgKi8KLQlpOTE1X2dlbV9j
aGlwc2V0X2ZsdXNoKGgtPmk5MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5n
dCk7CiAKIAlpZiAocnEtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIpIHsKIAkJZXJyID0g
cnEtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIocnEpOwpAQCAtMjc2LDcgKzI4MCw3IEBA
IHN0YXRpYyB1MzIgaHdzX3NlcW5vKGNvbnN0IHN0cnVjdCBoYW5nICpoLCBjb25zdCBzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSkKIHN0YXRpYyB2b2lkIGhhbmdfZmluaShzdHJ1Y3QgaGFuZyAqaCkK
IHsKIAkqaC0+YmF0Y2ggPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwotCWk5MTVfZ2VtX2NoaXBzZXRf
Zmx1c2goaC0+aTkxNSk7CisJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChoLT5ndCk7CiAKIAlpOTE1
X2dlbV9vYmplY3RfdW5waW5fbWFwKGgtPm9iaik7CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChoLT5v
YmopOwpAQCAtMzMzLDcgKzMzNyw3IEBAIHN0YXRpYyBpbnQgaWd0X2hhbmdfc2FuaXR5Y2hlY2so
dm9pZCAqYXJnKQogCQlpOTE1X3JlcXVlc3RfZ2V0KHJxKTsKIAogCQkqaC5iYXRjaCA9IE1JX0JB
VENIX0JVRkZFUl9FTkQ7Ci0JCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goaTkxNSk7CisJCWludGVs
X2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5ndCk7CiAKIAkJaTkxNV9yZXF1ZXN0X2FkZChycSk7
CiAKQEAgLTE1MTAsNyArMTUxNCw3IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X3F1ZXVlKHZvaWQg
KmFyZykKIAkJcHJfaW5mbygiJXM6IENvbXBsZXRlZCAlZCByZXNldHNcbiIsIGVuZ2luZS0+bmFt
ZSwgY291bnQpOwogCiAJCSpoLmJhdGNoID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKLQkJaTkxNV9n
ZW1fY2hpcHNldF9mbHVzaChpOTE1KTsKKwkJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChlbmdpbmUt
Pmd0KTsKIAogCQlpOTE1X3JlcXVlc3RfcHV0KHByZXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwppbmRleCA5M2U5NTc5YjhhNGYuLmY5ODEz
ZDIxZmU5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29y
a2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJv
dW5kcy5jCkBAIC01LDYgKzUsNyBAQAogICovCiAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0u
aCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIK
ICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgogCkBAIC01MTYsNyArNTE3LDcgQEAgc3RhdGljIGlu
dCBjaGVja19kaXJ0eV93aGl0ZWxpc3Qoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAog
CQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKGJhdGNoLT5vYmopOwogCQlpOTE1X2dlbV9vYmpl
Y3RfdW5waW5fbWFwKGJhdGNoLT5vYmopOwotCQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKGN0eC0+
aTkxNSk7CisJCWludGVsX2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5ndCk7CiAKIAkJcnEgPSBp
Z3RfcmVxdWVzdF9hbGxvYyhjdHgsIGVuZ2luZSk7CiAJCWlmIChJU19FUlIocnEpKSB7CkBAIC03
NzEsNyArNzcyLDcgQEAgc3RhdGljIGludCBzY3J1Yl93aGl0ZWxpc3RlZF9yZWdpc3RlcnMoc3Ry
dWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7
CiAKIAlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKGJhdGNoLT5vYmopOwotCWk5MTVfZ2VtX2No
aXBzZXRfZmx1c2goY3R4LT5pOTE1KTsKKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+
Z3QpOwogCiAJcnEgPSBpZ3RfcmVxdWVzdF9hbGxvYyhjdHgsIGVuZ2luZSk7CiAJaWYgKElTX0VS
UihycSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDQ5ODdhMDQ4YjNkMy4uY2Q1Zjdi
YTI4Zjg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTI2NDgsMTQgKzI2NDgsNiBAQCBp
bnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX2V2aWN0X2Zvcl9ub2RlKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAogCQkJCQkgdW5zaWduZWQgaW50IGZsYWdzKTsKIGludCBpOTE1X2dlbV9l
dmljdF92bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7CiAKLS8qIGJlbG9uZ3MgaW4g
aTkxNV9nZW1fZ3R0LmggKi8KLXN0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X2dlbV9jaGlwc2V0X2Zs
dXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQl3bWIoKTsKLQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA8IDYpCi0JCWludGVsX2d0dF9jaGlwc2V0X2ZsdXNoKCk7Ci19
Ci0KIC8qIGk5MTVfZ2VtX3N0b2xlbi5jICovCiBpbnQgaTkxNV9nZW1fc3RvbGVuX2luc2VydF9u
b2RlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQlzdHJ1Y3QgZHJtX21t
X25vZGUgKm5vZGUsIHU2NCBzaXplLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNGY5YWFj
NjJhOGE0Li5iMGNmY2RhNjc5ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTQyLDcg
KzE0Miw3IEBAIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCiAJCXJldHVybiAtRUZBVUxUOwogCiAJZHJtX2NsZmx1c2hfdmlydF9yYW5nZSh2YWRk
ciwgYXJncy0+c2l6ZSk7Ci0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaCh0b19pOTE1KG9iai0+YmFz
ZS5kZXYpKTsKKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKCZ0b19pOTE1KG9iai0+YmFzZS5kZXYp
LT5ndCk7CiAKIAlpbnRlbF9mYl9vYmpfZmx1c2gob2JqLCBPUklHSU5fQ1BVKTsKIAlyZXR1cm4g
MDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVl
c3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYwppbmRl
eCAxMTI3OGJhYzNhMjQuLjE1OGU5MjdhOGZjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYwpAQCAtMjcsNiArMjcsOCBAQAogI2luY2x1ZGUgImdl
bS9pOTE1X2dlbV9wbS5oIgogI2luY2x1ZGUgImdlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0Lmgi
CiAKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgorCiAjaW5jbHVkZSAiaTkxNV9yYW5kb20uaCIK
ICNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCiAjaW5jbHVkZSAiaWd0X2xpdmVfdGVzdC5oIgpA
QCAtNjI0LDcgKzYyNiw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmVtcHR5X2JhdGNoKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCV9faTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21h
cChvYmosIDAsIDY0KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CiAKLQlpOTE1
X2dlbV9jaGlwc2V0X2ZsdXNoKGk5MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goJmk5MTUt
Pmd0KTsKIAogCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmk5MTUtPmdndHQudm0sIE5V
TEwpOwogCWlmIChJU19FUlIodm1hKSkgewpAQCAtNzk3LDcgKzc5OSw3IEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV92bWEgKnJlY3Vyc2l2ZV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAlfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAob2JqLCAwLCA2NCk7CiAJaTkxNV9nZW1f
b2JqZWN0X3VucGluX21hcChvYmopOwogCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChpOTE1KTsK
KwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKCZpOTE1LT5ndCk7CiAKIAlyZXR1cm4gdm1hOwogCkBA
IC04MTUsNyArODE3LDcgQEAgc3RhdGljIGludCByZWN1cnNpdmVfYmF0Y2hfcmVzb2x2ZShzdHJ1
Y3QgaTkxNV92bWEgKmJhdGNoKQogCQlyZXR1cm4gUFRSX0VSUihjbWQpOwogCiAJKmNtZCA9IE1J
X0JBVENIX0JVRkZFUl9FTkQ7Ci0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChiYXRjaC0+dm0tPmk5
MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goYmF0Y2gtPnZtLT5ndCk7CiAKIAlpOTE1X2dl
bV9vYmplY3RfdW5waW5fbWFwKGJhdGNoLT5vYmopOwogCkBAIC0xMDM5LDcgKzEwNDEsNyBAQCBz
dGF0aWMgaW50IGxpdmVfc2VxdWVudGlhbF9lbmdpbmVzKHZvaWQgKmFyZykKIAkJCQkJICAgICAg
STkxNV9NQVBfV0MpOwogCQlpZiAoIUlTX0VSUihjbWQpKSB7CiAJCQkqY21kID0gTUlfQkFUQ0hf
QlVGRkVSX0VORDsKLQkJCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goaTkxNSk7CisJCQlpbnRlbF9n
dF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+Z3QpOwogCiAJCQlpOTE1X2dlbV9vYmplY3RfdW5waW5f
bWFwKHJlcXVlc3RbaWRdLT5iYXRjaC0+b2JqKTsKIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYwppbmRleCAxZTU5YjU0M2NmMjcuLjBjMWY2NTI2MmE2
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVyLmMKQEAg
LTMsNiArMyw3IEBACiAgKgogICogQ29weXJpZ2h0IMKpIDIwMTggSW50ZWwgQ29ycG9yYXRpb24K
ICAqLworI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCiAKICNpbmNsdWRlICJnZW0vc2VsZnRlc3Rz
L2lndF9nZW1fdXRpbHMuaCIKIApAQCAtOTQsNiArOTUsOCBAQCBpZ3Rfc3Bpbm5lcl9jcmVhdGVf
cmVxdWVzdChzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sCiAJdTMyICpiYXRjaDsKIAlpbnQgZXJy
OwogCisJc3Bpbi0+Z3QgPSBlbmdpbmUtPmd0OworCiAJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uo
c3Bpbi0+b2JqLCBjdHgtPnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpCiAJCXJldHVybiBF
UlJfQ0FTVCh2bWEpOwpAQCAtMTM4LDcgKzE0MSw3IEBAIGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1
ZXN0KHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3BpbiwKIAkqYmF0Y2grKyA9IHVwcGVyXzMyX2JpdHMo
dm1hLT5ub2RlLnN0YXJ0KTsKIAkqYmF0Y2grKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7IC8qIG5v
dCByZWFjaGVkICovCiAKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKHNwaW4tPmk5MTUpOworCWlu
dGVsX2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5ndCk7CiAKIAlpZiAoZW5naW5lLT5lbWl0X2lu
aXRfYnJlYWRjcnVtYiAmJgogCSAgICBycS0+dGltZWxpbmUtPmhhc19pbml0aWFsX2JyZWFkY3J1
bWIpIHsKQEAgLTE3Miw3ICsxNzUsNyBAQCBod3Nfc2Vxbm8oY29uc3Qgc3RydWN0IGlndF9zcGlu
bmVyICpzcGluLCBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHZvaWQgaWd0X3NwaW5u
ZXJfZW5kKHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3BpbikKIHsKIAkqc3Bpbi0+YmF0Y2ggPSBNSV9C
QVRDSF9CVUZGRVJfRU5EOwotCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goc3Bpbi0+aTkxNSk7CisJ
aW50ZWxfZ3RfY2hpcHNldF9mbHVzaChzcGluLT5ndCk7CiB9CiAKIHZvaWQgaWd0X3NwaW5uZXJf
ZmluaShzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4pCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5oCmluZGV4IDM0YTg4YWM5YjQ3YS4uMWJmYzM5ZWZhNzczIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuaApAQCAtMTQs
OCArMTQsMTEgQEAKICNpbmNsdWRlICJpOTE1X3JlcXVlc3QuaCIKICNpbmNsdWRlICJpOTE1X3Nl
bGZ0ZXN0LmgiCiAKK3N0cnVjdCBpbnRlbF9ndDsKKwogc3RydWN0IGlndF9zcGlubmVyIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0OwogCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpod3M7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKIAl1MzIgKmJhdGNoOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
