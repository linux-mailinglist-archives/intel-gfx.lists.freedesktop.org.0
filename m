Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C352E48BA6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F0F89394;
	Mon, 17 Jun 2019 18:13:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5166889356
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:13:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:13:25 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2019 11:13:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 19:12:27 +0100
Message-Id: <20190617181236.7981-25-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 24/33] drm/i915: Move i915_gem_chipset_flush to
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
Z25zIGJldHRlciB3aXRoIHRoZSByZXN0IG9mIHJlc3RydWN0dXJpbmcuCgp2MjoKICogTW92ZSBj
YWxsIG91dCBvZiBsaW5lLiAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgIHwgIDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9waHlzLmMgICAgICAgIHwgIDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyB8ICA0ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMgICAgICAgICAgICAgIHwgIDkgKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndC5oICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jICAgIHwgMTQgKysrKysrKysrKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgIHwgIDUgKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICAgIHwgIDggLS0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAgIHwgIDMg
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMgICB8IDEw
ICsrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5j
ICAgIHwgIDcgKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlu
bmVyLmggICAgfCAgMyArKysKIDEyIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDI2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCmluZGV4IDUyOGVlYTQ0ZGNjZi4uNGFlMjU1MTVlNjNjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTE0LDYgKzE0LDcg
QEAKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKICNpbmNsdWRlICJndC9pbnRl
bF9jb250ZXh0LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRl
bF9ndF9wbS5oIgogCiAjaW5jbHVkZSAiaTkxNV9nZW1faW9jdGxzLmgiCkBAIC05OTMsNyArOTk0
LDcgQEAgc3RhdGljIHZvaWQgcmVsb2NfZ3B1X2ZsdXNoKHN0cnVjdCByZWxvY19jYWNoZSAqY2Fj
aGUpCiAJX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKGNhY2hlLT5ycS0+YmF0Y2gtPm9iaiwg
MCwgY2FjaGUtPnJxX3NpemUpOwogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoY2FjaGUtPnJx
LT5iYXRjaC0+b2JqKTsKIAotCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goY2FjaGUtPnJxLT5pOTE1
KTsKKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGNhY2hlLT5ycS0+ZW5naW5lLT5ndCk7CiAKIAlp
OTE1X3JlcXVlc3RfYWRkKGNhY2hlLT5ycSk7CiAJY2FjaGUtPnJxID0gTlVMTDsKQEAgLTE5NTMs
NyArMTk1NCw3IEBAIHN0YXRpYyBpbnQgZWJfbW92ZV90b19ncHUoc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIpCiAJZWItPmV4ZWMgPSBOVUxMOwogCiAJLyogVW5jb25kaXRpb25hbGx5IGZsdXNo
IGFueSBjaGlwc2V0IGNhY2hlcyAoZm9yIHN0cmVhbWluZyB3cml0ZXMpLiAqLwotCWk5MTVfZ2Vt
X2NoaXBzZXRfZmx1c2goZWItPmk5MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goZWItPmVu
Z2luZS0+Z3QpOwogCXJldHVybiAwOwogCiBlcnJfc2tpcDoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcGh5cy5jCmluZGV4IDJkZWFjOTMzY2Y1OS4uN2I5MDBlZTRlZDhkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKQEAgLTEzLDYgKzEzLDcgQEAK
ICNpbmNsdWRlIDxkcm0vZHJtX2xlZ2FjeS5oPiAvKiBmb3IgZHJtX3BjaS5oISAqLwogI2luY2x1
ZGUgPGRybS9kcm1fcGNpLmg+CiAKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCiAjaW5jbHVkZSAiaTkx
NV9zY2F0dGVybGlzdC5oIgpAQCAtNjAsNyArNjEsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29i
amVjdF9nZXRfcGFnZXNfcGh5cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCQl2
YWRkciArPSBQQUdFX1NJWkU7CiAJfQogCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaCh0b19pOTE1
KG9iai0+YmFzZS5kZXYpKTsKKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKCZ0b19pOTE1KG9iai0+
YmFzZS5kZXYpLT5ndCk7CiAKIAlzdCA9IGttYWxsb2Moc2l6ZW9mKCpzdCksIEdGUF9LRVJORUwp
OwogCWlmICghc3QpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9o
dWdlX3BhZ2VzLmMKaW5kZXggYjc0NzI5YjZmMzUzLi5kY2Y2MGE4YzIyOWUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCkBAIC0xMCw2ICsx
MCw4IEBACiAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKIAorI2luY2x1ZGUgImd0L2lu
dGVsX2d0LmgiCisKICNpbmNsdWRlICJpZ3RfZ2VtX3V0aWxzLmgiCiAjaW5jbHVkZSAibW9ja19j
b250ZXh0LmgiCiAKQEAgLTkyNiw3ICs5MjgsNyBAQCBncHVfd3JpdGVfZHcoc3RydWN0IGk5MTVf
dm1hICp2bWEsIHU2NCBvZmZzZXQsIHUzMiB2YWwpCiAJfQogCiAJKmNtZCA9IE1JX0JBVENIX0JV
RkZFUl9FTkQ7Ci0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChpOTE1KTsKKwlpbnRlbF9ndF9jaGlw
c2V0X2ZsdXNoKHZtYS0+dm0tPmd0KTsKIAogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2Jq
KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKaW5kZXggMjUwMGJlZjA2YWY0Li5kMjVi
Y2M0YWUyYzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwpAQCAtMTgwLDcgKzE4MCw3
IEBAIHZvaWQgaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXMoc3RydWN0IGludGVsX2d0ICpndCkK
IAlpZiAoSU5URUxfSU5GTyhpOTE1KS0+aGFzX2NvaGVyZW50X2dndHQpCiAJCXJldHVybjsKIAot
CWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goaTkxNSk7CisJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChn
dCk7CiAKIAl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYp
IHsKIAkJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKQEAgLTE5MSwz
ICsxOTEsMTAgQEAgdm9pZCBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQogCQlzcGluX3VubG9ja19pcnEoJnVuY29yZS0+bG9jayk7CiAJfQogfQorCit2b2lk
IGludGVsX2d0X2NoaXBzZXRfZmx1c2goc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwl3bWIoKTsK
KwlpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA8IDYpCisJCWludGVsX2d0dF9jaGlwc2V0X2ZsdXNo
KCk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAppbmRleCBkODk0YzExNzgxMTYuLmZm
ZGMzMDE0NDg2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Qu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCkBAIC0xOSw1ICsxOSw2
IEBAIHZvaWQgaW50ZWxfZ3RfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF9ndCAq
Z3QsCiAJCQkJICAgIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spOwogCiB2b2lkIGlu
dGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRl
bF9ndF9jaGlwc2V0X2ZsdXNoKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiAjZW5kaWYgLyogX19J
TlRFTF9HVF9IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2No
ZWNrLmMKaW5kZXggYjBiMjk5OGU1NmI4Li44NTc3YmFhMDUwZmIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCkBAIC0yNSw2ICsyNSw3IEBACiAjaW5j
bHVkZSA8bGludXgva3RocmVhZC5oPgogCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
aCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5o
IgogCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIgpAQCAtNDMsNiArNDQsNyBAQAogCiBzdHJ1
Y3QgaGFuZyB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisJc3RydWN0IGludGVs
X2d0ICpndDsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqaHdzOwogCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKQEAg
LTEzNSw2ICsxMzcsOCBAQCBoYW5nX2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBoYW5nICpoLCBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJdTMyICpiYXRjaDsKIAlpbnQgZXJyOwogCisJ
aC0+Z3QgPSBlbmdpbmUtPmd0OworCiAJaWYgKGk5MTVfZ2VtX29iamVjdF9pc19hY3RpdmUoaC0+
b2JqKSkgewogCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCQl2b2lkICp2YWRk
cjsKQEAgLTI0Miw3ICsyNDYsNyBAQCBoYW5nX2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBoYW5nICpo
LCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCSpiYXRjaCsrID0gbG93ZXJfMzJf
Yml0cyh2bWEtPm5vZGUuc3RhcnQpOwogCX0KIAkqYmF0Y2grKyA9IE1JX0JBVENIX0JVRkZFUl9F
TkQ7IC8qIG5vdCByZWFjaGVkICovCi0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChoLT5pOTE1KTsK
KwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+Z3QpOwogCiAJaWYgKHJxLT5lbmdpbmUt
PmVtaXRfaW5pdF9icmVhZGNydW1iKSB7CiAJCWVyciA9IHJxLT5lbmdpbmUtPmVtaXRfaW5pdF9i
cmVhZGNydW1iKHJxKTsKQEAgLTI3Niw3ICsyODAsOSBAQCBzdGF0aWMgdTMyIGh3c19zZXFubyhj
b25zdCBzdHJ1Y3QgaGFuZyAqaCwgY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiBzdGF0
aWMgdm9pZCBoYW5nX2Zpbmkoc3RydWN0IGhhbmcgKmgpCiB7CiAJKmgtPmJhdGNoID0gTUlfQkFU
Q0hfQlVGRkVSX0VORDsKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKGgtPmk5MTUpOworCisJaWYg
KGgtPmd0KQorCQlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGgtPmd0KTsKIAogCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAoaC0+b2JqKTsKIAlpOTE1X2dlbV9vYmplY3RfcHV0KGgtPm9iaik7CkBA
IC0zMzMsNyArMzM5LDcgQEAgc3RhdGljIGludCBpZ3RfaGFuZ19zYW5pdHljaGVjayh2b2lkICph
cmcpCiAJCWk5MTVfcmVxdWVzdF9nZXQocnEpOwogCiAJCSpoLmJhdGNoID0gTUlfQkFUQ0hfQlVG
RkVSX0VORDsKLQkJaTkxNV9nZW1fY2hpcHNldF9mbHVzaChpOTE1KTsKKwkJaW50ZWxfZ3RfY2hp
cHNldF9mbHVzaChlbmdpbmUtPmd0KTsKIAogCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKIApAQCAt
MTUxMCw3ICsxNTE2LDcgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfcXVldWUodm9pZCAqYXJnKQog
CQlwcl9pbmZvKCIlczogQ29tcGxldGVkICVkIHJlc2V0c1xuIiwgZW5naW5lLT5uYW1lLCBjb3Vu
dCk7CiAKIAkJKmguYmF0Y2ggPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwotCQlpOTE1X2dlbV9jaGlw
c2V0X2ZsdXNoKGk5MTUpOworCQlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+Z3QpOwog
CiAJCWk5MTVfcmVxdWVzdF9wdXQocHJldik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCmluZGV4IDkxNDQ5ZDUxNTdmNi4uNGRiOTI5NjQ1ZTVi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5k
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMK
QEAgLTUsNiArNSw3IEBACiAgKi8KIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgorI2lu
Y2x1ZGUgImd0L2ludGVsX2d0LmgiCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIgogI2luY2x1
ZGUgImludGVsX3Jlc2V0LmgiCiAKQEAgLTUxNiw3ICs1MTcsNyBAQCBzdGF0aWMgaW50IGNoZWNr
X2RpcnR5X3doaXRlbGlzdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCiAJCWk5MTVf
Z2VtX29iamVjdF9mbHVzaF9tYXAoYmF0Y2gtPm9iaik7CiAJCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9tYXAoYmF0Y2gtPm9iaik7Ci0JCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goY3R4LT5pOTE1KTsK
KwkJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChlbmdpbmUtPmd0KTsKIAogCQlycSA9IGlndF9yZXF1
ZXN0X2FsbG9jKGN0eCwgZW5naW5lKTsKIAkJaWYgKElTX0VSUihycSkpIHsKQEAgLTc3MSw3ICs3
NzIsNyBAQCBzdGF0aWMgaW50IHNjcnViX3doaXRlbGlzdGVkX3JlZ2lzdGVycyhzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4LAogCSpjcysrID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKIAogCWk5
MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAoYmF0Y2gtPm9iaik7Ci0JaTkxNV9nZW1fY2hpcHNldF9m
bHVzaChjdHgtPmk5MTUpOworCWludGVsX2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5ndCk7CiAK
IAlycSA9IGlndF9yZXF1ZXN0X2FsbG9jKGN0eCwgZW5naW5lKTsKIAlpZiAoSVNfRVJSKHJxKSkg
ewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZDljMDJiZjQyMDUyLi4yOTQzNjM4NzYxMWIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjYwMCwxNCArMjYwMCw2IEBAIGludCBfX211
c3RfY2hlY2sgaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sCiAJCQkJCSB1bnNpZ25lZCBpbnQgZmxhZ3MpOwogaW50IGk5MTVfZ2VtX2V2aWN0X3Zt
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKTsKIAotLyogYmVsb25ncyBpbiBpOTE1X2dl
bV9ndHQuaCAqLwotc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXdtYigpOwotCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpIDwgNikKLQkJaW50ZWxfZ3R0X2NoaXBzZXRfZmx1c2goKTsKLX0KLQogLyog
aTkxNV9nZW1fc3RvbGVuLmMgKi8KIGludCBpOTE1X2dlbV9zdG9sZW5faW5zZXJ0X25vZGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCXN0cnVjdCBkcm1fbW1fbm9kZSAq
bm9kZSwgdTY0IHNpemUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA3OWM3MThmMDUzY2Qu
LjM0ZDBhMWQ3MzUxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC00NCw2ICs0NCw3IEBA
CiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtZnMu
aCIKICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfcG0uaCIKKyNpbmNsdWRlICJndC9pbnRlbF9n
dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfbW9j
cy5oIgogI2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCkBAIC0xNDEsNyArMTQyLDcgQEAgaTkx
NV9nZW1fcGh5c19wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJcmV0
dXJuIC1FRkFVTFQ7CiAKIAlkcm1fY2xmbHVzaF92aXJ0X3JhbmdlKHZhZGRyLCBhcmdzLT5zaXpl
KTsKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKHRvX2k5MTUob2JqLT5iYXNlLmRldikpOworCWlu
dGVsX2d0X2NoaXBzZXRfZmx1c2goJnRvX2k5MTUob2JqLT5iYXNlLmRldiktPmd0KTsKIAogCWlu
dGVsX2ZiX29ial9mbHVzaChvYmosIE9SSUdJTl9DUFUpOwogCXJldHVybiAwOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCmluZGV4IDNkZTI0ZjNkNGVk
NS4uYWVhODBkODkxYjI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfcmVxdWVzdC5jCkBAIC0yNyw2ICsyNyw4IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3Bt
LmgiCiAjaW5jbHVkZSAiZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuaCIKIAorI2luY2x1ZGUg
Imd0L2ludGVsX2d0LmgiCisKICNpbmNsdWRlICJpOTE1X3JhbmRvbS5oIgogI2luY2x1ZGUgImk5
MTVfc2VsZnRlc3QuaCIKICNpbmNsdWRlICJpZ3RfbGl2ZV90ZXN0LmgiCkBAIC02MjQsNyArNjI2
LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqZW1wdHlfYmF0Y2goc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCiAJX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaiwgMCwgNjQp
OwogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2JqKTsKIAotCWk5MTVfZ2VtX2NoaXBzZXRf
Zmx1c2goaTkxNSk7CisJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaCgmaTkxNS0+Z3QpOwogCiAJdm1h
ID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmaTkxNS0+Z2d0dC52bSwgTlVMTCk7CiAJaWYgKElT
X0VSUih2bWEpKSB7CkBAIC03OTcsNyArNzk5LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAq
cmVjdXJzaXZlX2JhdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCV9faTkxNV9n
ZW1fb2JqZWN0X2ZsdXNoX21hcChvYmosIDAsIDY0KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5f
bWFwKG9iaik7CiAKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKGk5MTUpOworCWludGVsX2d0X2No
aXBzZXRfZmx1c2goJmk5MTUtPmd0KTsKIAogCXJldHVybiB2bWE7CiAKQEAgLTgxNSw3ICs4MTcs
NyBAQCBzdGF0aWMgaW50IHJlY3Vyc2l2ZV9iYXRjaF9yZXNvbHZlKHN0cnVjdCBpOTE1X3ZtYSAq
YmF0Y2gpCiAJCXJldHVybiBQVFJfRVJSKGNtZCk7CiAKIAkqY21kID0gTUlfQkFUQ0hfQlVGRkVS
X0VORDsKLQlpOTE1X2dlbV9jaGlwc2V0X2ZsdXNoKGJhdGNoLT52bS0+aTkxNSk7CisJaW50ZWxf
Z3RfY2hpcHNldF9mbHVzaChiYXRjaC0+dm0tPmd0KTsKIAogCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9tYXAoYmF0Y2gtPm9iaik7CiAKQEAgLTEwMzksNyArMTA0MSw3IEBAIHN0YXRpYyBpbnQgbGl2
ZV9zZXF1ZW50aWFsX2VuZ2luZXModm9pZCAqYXJnKQogCQkJCQkgICAgICBJOTE1X01BUF9XQyk7
CiAJCWlmICghSVNfRVJSKGNtZCkpIHsKIAkJCSpjbWQgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwot
CQkJaTkxNV9nZW1fY2hpcHNldF9mbHVzaChpOTE1KTsKKwkJCWludGVsX2d0X2NoaXBzZXRfZmx1
c2goZW5naW5lLT5ndCk7CiAKIAkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAocmVxdWVzdFtp
ZF0tPmJhdGNoLT5vYmopOwogCQl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaWd0X3NwaW5uZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
Z3Rfc3Bpbm5lci5jCmluZGV4IDFlNTliNTQzY2YyNy4uMGMxZjY1MjYyYTYzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYwpAQCAtMyw2ICszLDcgQEAK
ICAqCiAgKiBDb3B5cmlnaHQgwqkgMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgogICovCisjaW5jbHVk
ZSAiZ3QvaW50ZWxfZ3QuaCIKIAogI2luY2x1ZGUgImdlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGls
cy5oIgogCkBAIC05NCw2ICs5NSw4IEBAIGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KHN0cnVj
dCBpZ3Rfc3Bpbm5lciAqc3BpbiwKIAl1MzIgKmJhdGNoOwogCWludCBlcnI7CiAKKwlzcGluLT5n
dCA9IGVuZ2luZS0+Z3Q7CisKIAl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShzcGluLT5vYmosIGN0
eC0+dm0sIE5VTEwpOwogCWlmIChJU19FUlIodm1hKSkKIAkJcmV0dXJuIEVSUl9DQVNUKHZtYSk7
CkBAIC0xMzgsNyArMTQxLDcgQEAgaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGln
dF9zcGlubmVyICpzcGluLAogCSpiYXRjaCsrID0gdXBwZXJfMzJfYml0cyh2bWEtPm5vZGUuc3Rh
cnQpOwogCSpiYXRjaCsrID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsgLyogbm90IHJlYWNoZWQgKi8K
IAotCWk5MTVfZ2VtX2NoaXBzZXRfZmx1c2goc3Bpbi0+aTkxNSk7CisJaW50ZWxfZ3RfY2hpcHNl
dF9mbHVzaChlbmdpbmUtPmd0KTsKIAogCWlmIChlbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1i
ICYmCiAJICAgIHJxLT50aW1lbGluZS0+aGFzX2luaXRpYWxfYnJlYWRjcnVtYikgewpAQCAtMTcy
LDcgKzE3NSw3IEBAIGh3c19zZXFubyhjb25zdCBzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sIGNv
bnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogdm9pZCBpZ3Rfc3Bpbm5lcl9lbmQoc3RydWN0
IGlndF9zcGlubmVyICpzcGluKQogewogCSpzcGluLT5iYXRjaCA9IE1JX0JBVENIX0JVRkZFUl9F
TkQ7Ci0JaTkxNV9nZW1fY2hpcHNldF9mbHVzaChzcGluLT5pOTE1KTsKKwlpbnRlbF9ndF9jaGlw
c2V0X2ZsdXNoKHNwaW4tPmd0KTsKIH0KIAogdm9pZCBpZ3Rfc3Bpbm5lcl9maW5pKHN0cnVjdCBp
Z3Rfc3Bpbm5lciAqc3BpbikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pZ3Rfc3Bpbm5lci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9z
cGlubmVyLmgKaW5kZXggMzRhODhhYzliNDdhLi4xYmZjMzllZmE3NzMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5oCkBAIC0xNCw4ICsxNCwxMSBAQAog
I2luY2x1ZGUgImk5MTVfcmVxdWVzdC5oIgogI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKIAor
c3RydWN0IGludGVsX2d0OworCiBzdHJ1Y3QgaWd0X3NwaW5uZXIgewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1OworCXN0cnVjdCBpbnRlbF9ndCAqZ3Q7CiAJc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKmh3czsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXUz
MiAqYmF0Y2g7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
