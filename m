Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7EE81744
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 12:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EAAE89CF2;
	Mon,  5 Aug 2019 10:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659E189CF2
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 10:42:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17886624-1500050 
 for multiple; Mon, 05 Aug 2019 11:42:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Aug 2019 11:42:16 +0100
Message-Id: <20190805104216.18306-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190805094333.17600-1-chris@chris-wilson.co.uk>
References: <20190805094333.17600-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Defer final intel_wakeref_put to
 process context
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

QXMgd2UgbmVlZCB0byBhY3F1aXJlIGEgbXV0ZXggdG8gc2VyaWFsaXNlIHRoZSBmaW5hbAppbnRl
bF93YWtlcmVmX3B1dCwgd2UgbmVlZCB0byBlbnN1cmUgdGhhdCB3ZSBhcmUgaW4gcHJvY2VzcyBj
b250ZXh0IGF0CnRoYXQgdGltZS4gSG93ZXZlciwgd2Ugd2FudCB0byBhbGxvdyBvcGVyYXRpb24g
b24gdGhlIGludGVsX3dha2VyZWYgZnJvbQppbnNpZGUgdGltZXIgYW5kIG90aGVyIGhhcmRpcnEg
Y29udGV4dCwgd2hpY2ggbWVhbnMgdGhhdCBuZWVkIHRvIGRlZmVyCnRoYXQgZmluYWwgcHV0IHRv
IGEgd29ya3F1ZXVlLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTI5NQpGaXhlczogMTgzOTg5MDRjYTllICgiZHJtL2k5MTU6IE9ubHkg
cmVjb3ZlciBhY3RpdmUgZW5naW5lcyIpCkZpeGVzOiA1MWZiZDhkZTg3ZGMgKCJkcm0vaTkxNS9w
bXU6IEF0b21pY2FsbHkgYWNxdWlyZSB0aGUgZ3RfcG0gd2FrZXJlZiIpClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KSnVzdCByZWFycmFuZ2luZyB0aGUgc3RydWN0IGZv
ciBmdW4uCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgfCAx
NyArKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCB8IDE4
ICsrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgICAgIHwgMjQg
KysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaCAgICAgfCAx
MSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jICAgICAgfCA1OCAr
KysrKysrKysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJl
Zi5oICAgICAgfCA0NSArKysrKysrKysrLS0tLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgOTggaW5z
ZXJ0aW9ucygrKSwgNzUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfcG0uYwppbmRleCAwMzM2MjA0OTg4ZDYuLmU1NjI4M2EwNWIwNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKQEAgLTM3LDExICszNyw2IEBAIHN0
YXRpYyBpbnQgX19lbmdpbmVfdW5wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAlyZXR1
cm4gMDsKIH0KIAotdm9pZCBpbnRlbF9lbmdpbmVfcG1fZ2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKLXsKLQlpbnRlbF93YWtlcmVmX2dldCgmZW5naW5lLT5pOTE1LT5ydW50aW1l
X3BtLCAmZW5naW5lLT53YWtlcmVmLCBfX2VuZ2luZV91bnBhcmspOwotfQotCiB2b2lkIGludGVs
X2VuZ2luZV9wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAkvKgpAQCAt
MTM2LDEyICsxMzEsMTQgQEAgc3RhdGljIGludCBfX2VuZ2luZV9wYXJrKHN0cnVjdCBpbnRlbF93
YWtlcmVmICp3ZikKIAlyZXR1cm4gMDsKIH0KIAotdm9pZCBpbnRlbF9lbmdpbmVfcG1fcHV0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlpbnRlbF93YWtlcmVmX3B1dCgmZW5n
aW5lLT5pOTE1LT5ydW50aW1lX3BtLCAmZW5naW5lLT53YWtlcmVmLCBfX2VuZ2luZV9wYXJrKTsK
LX0KK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgd2Zfb3BzID0geworCS5n
ZXQgPSBfX2VuZ2luZV91bnBhcmssCisJLnB1dCA9IF9fZW5naW5lX3BhcmssCit9OwogCiB2b2lk
IGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7
Ci0JaW50ZWxfd2FrZXJlZl9pbml0KCZlbmdpbmUtPndha2VyZWYpOworCXN0cnVjdCBpbnRlbF9y
dW50aW1lX3BtICpycG0gPSAmZW5naW5lLT5pOTE1LT5ydW50aW1lX3BtOworCisJaW50ZWxfd2Fr
ZXJlZl9pbml0KCZlbmdpbmUtPndha2VyZWYsIHJwbSwgJndmX29wcyk7CiB9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oCmluZGV4IDAxNWFjNzJkN2FkMC4uZDNkNDgy
MTZmNGE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
cG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaApAQCAt
MTAsMjMgKzEwLDI3IEBACiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3R5cGVzLmgiCiAjaW5jbHVk
ZSAiaW50ZWxfd2FrZXJlZi5oIgogCi1zdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKLQotdm9pZCBp
bnRlbF9lbmdpbmVfcG1fZ2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Ci12b2lk
IGludGVsX2VuZ2luZV9wbV9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKLQog
c3RhdGljIGlubGluZSBib29sCiBpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoY29uc3Qgc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXJldHVybiBpbnRlbF93YWtlcmVmX2lzX2Fj
dGl2ZSgmZW5naW5lLT53YWtlcmVmKTsKIH0KIAotc3RhdGljIGlubGluZSBib29sCi1pbnRlbF9l
bmdpbmVfcG1fZ2V0X2lmX2F3YWtlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3N0
YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9lbmdpbmVfcG1fZ2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKK3sKKwlpbnRlbF93YWtlcmVmX2dldCgmZW5naW5lLT53YWtlcmVmKTsKK30K
Kworc3RhdGljIGlubGluZSBib29sIGludGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdha2Uoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXJldHVybiBpbnRlbF93YWtlcmVmX2dldF9p
Zl9hY3RpdmUoJmVuZ2luZS0+d2FrZXJlZik7CiB9CiAKK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRl
bF9lbmdpbmVfcG1fcHV0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlpbnRl
bF93YWtlcmVmX3B1dCgmZW5naW5lLT53YWtlcmVmKTsKK30KKwogdm9pZCBpbnRlbF9lbmdpbmVf
cGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCiB2b2lkIGludGVsX2VuZ2lu
ZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXggNmM4OTcwMjcxYTdmLi5lNzRhNmVhODQxYTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAtMTcsNyArMTcsNyBAQCBzdGF0
aWMgdm9pZCBwbV9ub3RpZnkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBzdGF0
ZSkKIAlibG9ja2luZ19ub3RpZmllcl9jYWxsX2NoYWluKCZpOTE1LT5ndC5wbV9ub3RpZmljYXRp
b25zLCBzdGF0ZSwgaTkxNSk7CiB9CiAKLXN0YXRpYyBpbnQgaW50ZWxfZ3RfdW5wYXJrKHN0cnVj
dCBpbnRlbF93YWtlcmVmICp3ZikKK3N0YXRpYyBpbnQgX19ndF91bnBhcmsoc3RydWN0IGludGVs
X3dha2VyZWYgKndmKQogewogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2Yod2Ys
IHR5cGVvZigqZ3QpLCB3YWtlcmVmKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGd0LT5pOTE1OwpAQCAtNTMsMTQgKzUzLDcgQEAgc3RhdGljIGludCBpbnRlbF9ndF91bnBhcmso
c3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCXJldHVybiAwOwogfQogCi12b2lkIGludGVsX2d0
X3BtX2dldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQotewotCXN0cnVjdCBpbnRlbF9ydW50aW1lX3Bt
ICpycG0gPSAmZ3QtPmk5MTUtPnJ1bnRpbWVfcG07Ci0KLQlpbnRlbF93YWtlcmVmX2dldChycG0s
ICZndC0+d2FrZXJlZiwgaW50ZWxfZ3RfdW5wYXJrKTsKLX0KLQotc3RhdGljIGludCBpbnRlbF9n
dF9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKK3N0YXRpYyBpbnQgX19ndF9wYXJrKHN0
cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9CiAJCWNvbnRhaW5lcl9vZih3ZiwgdHlwZW9mKCppOTE1KSwgZ3Qud2FrZXJlZik7CkBAIC04
MCwxNiArNzMsMTUgQEAgc3RhdGljIGludCBpbnRlbF9ndF9wYXJrKHN0cnVjdCBpbnRlbF93YWtl
cmVmICp3ZikKIAlyZXR1cm4gMDsKIH0KIAotdm9pZCBpbnRlbF9ndF9wbV9wdXQoc3RydWN0IGlu
dGVsX2d0ICpndCkKLXsKLQlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJmd0LT5pOTE1
LT5ydW50aW1lX3BtOwotCi0JaW50ZWxfd2FrZXJlZl9wdXQocnBtLCAmZ3QtPndha2VyZWYsIGlu
dGVsX2d0X3BhcmspOwotfQorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF93YWtlcmVmX29wcyB3
Zl9vcHMgPSB7CisJLmdldCA9IF9fZ3RfdW5wYXJrLAorCS5wdXQgPSBfX2d0X3BhcmssCit9Owog
CiB2b2lkIGludGVsX2d0X3BtX2luaXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpndCkKIHsKLQlp
bnRlbF93YWtlcmVmX2luaXQoJmd0LT53YWtlcmVmKTsKKwlpbnRlbF93YWtlcmVmX2luaXQoJmd0
LT53YWtlcmVmLCAmZ3QtPmk5MTUtPnJ1bnRpbWVfcG0sICZ3Zl9vcHMpOworCiAJQkxPQ0tJTkdf
SU5JVF9OT1RJRklFUl9IRUFEKCZndC0+cG1fbm90aWZpY2F0aW9ucyk7CiB9CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCmluZGV4IGU4YTE4ZDRiMjdjOS4uNWUwY2QzMDQ0ZWI2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmgKQEAgLTE3LDE0ICsxNywyMSBA
QCBlbnVtIHsKIAlJTlRFTF9HVF9QQVJLLAogfTsKIAotdm9pZCBpbnRlbF9ndF9wbV9nZXQoc3Ry
dWN0IGludGVsX2d0ICpndCk7Ci12b2lkIGludGVsX2d0X3BtX3B1dChzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KTsKK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9ndF9wbV9nZXQoc3RydWN0IGludGVsX2d0
ICpndCkKK3sKKwlpbnRlbF93YWtlcmVmX2dldCgmZ3QtPndha2VyZWYpOworfQogCiBzdGF0aWMg
aW5saW5lIGJvb2wgaW50ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiB7CiAJcmV0dXJuIGludGVsX3dha2VyZWZfZ2V0X2lmX2FjdGl2ZSgmZ3QtPndha2VyZWYpOwog
fQogCitzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3RfcG1fcHV0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCit7CisJaW50ZWxfd2FrZXJlZl9wdXQoJmd0LT53YWtlcmVmKTsKK30KKwogdm9pZCBpbnRl
bF9ndF9wbV9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiB2b2lkIGludGVsX2d0
X3Nhbml0aXplKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGJvb2wgZm9yY2UpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfd2FrZXJlZi5jCmluZGV4IDA2YmQ4YjIxNWNjMi4uNDMyMDgxZTMyMGZlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jCkBAIC03LDIyICs3LDIwIEBACiAjaW5jbHVk
ZSAiaW50ZWxfcnVudGltZV9wbS5oIgogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKIAotc3Rh
dGljIHZvaWQgcnBtX2dldChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLCBzdHJ1Y3QgaW50
ZWxfd2FrZXJlZiAqd2YpCitzdGF0aWMgdm9pZCBycG1fZ2V0KHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikKIHsKLQl3Zi0+d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHJwbSk7CisJd2Yt
Pndha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCh3Zi0+cnBtKTsKIH0KIAotc3RhdGljIHZv
aWQgcnBtX3B1dChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLCBzdHJ1Y3QgaW50ZWxfd2Fr
ZXJlZiAqd2YpCitzdGF0aWMgdm9pZCBycG1fcHV0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikK
IHsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZiA9IGZldGNoX2FuZF96ZXJvKCZ3Zi0+d2FrZXJl
Zik7CiAKLQlpbnRlbF9ydW50aW1lX3BtX3B1dChycG0sIHdha2VyZWYpOworCWludGVsX3J1bnRp
bWVfcG1fcHV0KHdmLT5ycG0sIHdha2VyZWYpOwogCUlOVEVMX1dBS0VSRUZfQlVHX09OKCF3YWtl
cmVmKTsKIH0KIAotaW50IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3RydWN0IGludGVsX3J1
bnRpbWVfcG0gKnJwbSwKLQkJCSAgICAgIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwKLQkJCSAg
ICAgIGludCAoKmZuKShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpKQoraW50IF9faW50ZWxfd2Fr
ZXJlZl9nZXRfZmlyc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogewogCS8qCiAJICogVHJl
YXQgZ2V0L3B1dCBhcyBkaWZmZXJlbnQgc3ViY2xhc3NlcywgYXMgd2UgbWF5IG5lZWQgdG8gcnVu
CkBAIC0zNCwxMSArMzIsMTEgQEAgaW50IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3RydWN0
IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKIAlpZiAoIWF0b21pY19yZWFkKCZ3Zi0+Y291bnQpKSB7
CiAJCWludCBlcnI7CiAKLQkJcnBtX2dldChycG0sIHdmKTsKKwkJcnBtX2dldCh3Zik7CiAKLQkJ
ZXJyID0gZm4od2YpOworCQllcnIgPSB3Zi0+b3BzLT5nZXQod2YpOwogCQlpZiAodW5saWtlbHko
ZXJyKSkgewotCQkJcnBtX3B1dChycG0sIHdmKTsKKwkJCXJwbV9wdXQod2YpOwogCQkJbXV0ZXhf
dW5sb2NrKCZ3Zi0+bXV0ZXgpOwogCQkJcmV0dXJuIGVycjsKIAkJfQpAQCAtNTIsMjcgKzUwLDQ3
IEBAIGludCBfX2ludGVsX3dha2VyZWZfZ2V0X2ZpcnN0KHN0cnVjdCBpbnRlbF9ydW50aW1lX3Bt
ICpycG0sCiAJcmV0dXJuIDA7CiB9CiAKLWludCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3Ry
dWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKLQkJCSAgICAgc3RydWN0IGludGVsX3dha2VyZWYg
KndmLAotCQkJICAgICBpbnQgKCpmbikoc3RydWN0IGludGVsX3dha2VyZWYgKndmKSkKK3ZvaWQg
X19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHsKLQlp
bnQgZXJyOworCUlOVEVMX1dBS0VSRUZfQlVHX09OKHdvcmtfcGVuZGluZygmd2YtPndvcmspKTsK
KworCWlmIChpbl9pbnRlcnJ1cHQoKSkgeworCQlzY2hlZHVsZV93b3JrKCZ3Zi0+d29yayk7CisJ
CXJldHVybjsKKwl9CiAKLQllcnIgPSBmbih3Zik7Ci0JaWYgKGxpa2VseSghZXJyKSkKLQkJcnBt
X3B1dChycG0sIHdmKTsKKwlpZiAoIWF0b21pY19kZWNfYW5kX211dGV4X2xvY2soJndmLT5jb3Vu
dCwgJndmLT5tdXRleCkpCisJCXJldHVybjsKKworCWlmIChsaWtlbHkoIXdmLT5vcHMtPnB1dCh3
ZikpKQorCQlycG1fcHV0KHdmKTsKIAllbHNlCi0JCWF0b21pY19pbmMoJndmLT5jb3VudCk7CisJ
CS8qIG9wcy0+cHV0KCkgbXVzdCBzY2hlZHVsZSBpdHMgb3duIHJlbGVhc2Ugb24gZGVmZXJyYWwg
Ki8KKwkJYXRvbWljX3NldF9yZWxlYXNlKCZ3Zi0+Y291bnQsIDEpOworCiAJbXV0ZXhfdW5sb2Nr
KCZ3Zi0+bXV0ZXgpOworfQorCitzdGF0aWMgdm9pZCBfX2ludGVsX3dha2VyZWZfcHV0X3dvcmso
c3RydWN0IHdvcmtfc3RydWN0ICp3cmspCit7CisJc3RydWN0IGludGVsX3dha2VyZWYgKndmID0g
Y29udGFpbmVyX29mKHdyaywgdHlwZW9mKCp3ZiksIHdvcmspOwogCi0JcmV0dXJuIGVycjsKKwlp
bnRlbF93YWtlcmVmX3B1dCh3Zik7CiB9CiAKLXZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3Ry
dWN0IGludGVsX3dha2VyZWYgKndmLCBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgKmtleSkKK3ZvaWQg
X19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVsX3dha2VyZWYgKndmLAorCQkJICBzdHJ1
Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLAorCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJl
Zl9vcHMgKm9wcywKKwkJCSAgc3RydWN0IGxvY2tfY2xhc3Nfa2V5ICprZXkpCiB7CisJd2YtPnJw
bSA9IHJwbTsKKwl3Zi0+b3BzID0gb3BzOworCiAJX19tdXRleF9pbml0KCZ3Zi0+bXV0ZXgsICJ3
YWtlcmVmIiwga2V5KTsKIAlhdG9taWNfc2V0KCZ3Zi0+Y291bnQsIDApOwogCXdmLT53YWtlcmVm
ID0gMDsKKworCUlOSVRfV09SSygmd2YtPndvcmssIF9faW50ZWxfd2FrZXJlZl9wdXRfd29yayk7
CiB9CiAKIHN0YXRpYyB2b2lkIHdha2VyZWZfYXV0b190aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0
ICp0KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCmluZGV4IDFkNmY1OTg2ZTRlNS4u
ZDYzZThiYzZlMzhmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtl
cmVmLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCkBAIC0xMiw2
ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgvcmVmY291bnQuaD4KICNpbmNsdWRlIDxsaW51eC9z
dGFja2RlcG90Lmg+CiAjaW5jbHVkZSA8bGludXgvdGltZXIuaD4KKyNpbmNsdWRlIDxsaW51eC93
b3JrcXVldWUuaD4KIAogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHKQogI2Rl
ZmluZSBJTlRFTF9XQUtFUkVGX0JVR19PTihleHByKSBCVUdfT04oZXhwcikKQEAgLTIwLDI5ICsy
MSwzOSBAQAogI2VuZGlmCiAKIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtOworc3RydWN0IGludGVs
X3dha2VyZWY7CiAKIHR5cGVkZWYgZGVwb3Rfc3RhY2tfaGFuZGxlX3QgaW50ZWxfd2FrZXJlZl90
OwogCitzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgeworCWludCAoKmdldCkoc3RydWN0IGludGVs
X3dha2VyZWYgKndmKTsKKwlpbnQgKCpwdXQpKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3Zik7Cit9
OworCiBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiB7CiAJYXRvbWljX3QgY291bnQ7CiAJc3RydWN0IG11
dGV4IG11dGV4OworCiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CisKKwlzdHJ1Y3QgaW50ZWxf
cnVudGltZV9wbSAqcnBtOworCWNvbnN0IHN0cnVjdCBpbnRlbF93YWtlcmVmX29wcyAqb3BzOwor
CisJc3RydWN0IHdvcmtfc3RydWN0IHdvcms7CiB9OwogCiB2b2lkIF9faW50ZWxfd2FrZXJlZl9p
bml0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwKKwkJCSAgc3RydWN0IGludGVsX3J1bnRpbWVf
cG0gKnJwbSwKKwkJCSAgY29uc3Qgc3RydWN0IGludGVsX3dha2VyZWZfb3BzICpvcHMsCiAJCQkg
IHN0cnVjdCBsb2NrX2NsYXNzX2tleSAqa2V5KTsKLSNkZWZpbmUgaW50ZWxfd2FrZXJlZl9pbml0
KHdmKSBkbyB7CQkJCQlcCisjZGVmaW5lIGludGVsX3dha2VyZWZfaW5pdCh3ZiwgcnBtLCBvcHMp
IGRvIHsJCQkJXAogCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgX19rZXk7CQkJCVwKIAkJ
CQkJCQkJCVwKLQlfX2ludGVsX3dha2VyZWZfaW5pdCgod2YpLCAmX19rZXkpOwkJCQlcCisJX19p
bnRlbF93YWtlcmVmX2luaXQoKHdmKSwgKHJwbSksIChvcHMpLCAmX19rZXkpOwkJXAogfSB3aGls
ZSAoMCkKIAotaW50IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gKnJwbSwKLQkJCSAgICAgIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwKLQkJCSAgICAg
IGludCAoKmZuKShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpKTsKLWludCBfX2ludGVsX3dha2Vy
ZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKLQkJCSAgICAgc3RydWN0
IGludGVsX3dha2VyZWYgKndmLAotCQkJICAgICBpbnQgKCpmbikoc3RydWN0IGludGVsX3dha2Vy
ZWYgKndmKSk7CitpbnQgX19pbnRlbF93YWtlcmVmX2dldF9maXJzdChzdHJ1Y3QgaW50ZWxfd2Fr
ZXJlZiAqd2YpOwordm9pZCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3dh
a2VyZWYgKndmKTsKIAogLyoqCiAgKiBpbnRlbF93YWtlcmVmX2dldDogQWNxdWlyZSB0aGUgd2Fr
ZXJlZgpAQCAtNjEsMTIgKzcyLDEwIEBAIGludCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3Ry
dWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKICAqIGNvZGUgb3RoZXJ3aXNlLgogICovCiBzdGF0
aWMgaW5saW5lIGludAotaW50ZWxfd2FrZXJlZl9nZXQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0g
KnJwbSwKLQkJICBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsCi0JCSAgaW50ICgqZm4pKHN0cnVj
dCBpbnRlbF93YWtlcmVmICp3ZikpCitpbnRlbF93YWtlcmVmX2dldChzdHJ1Y3QgaW50ZWxfd2Fr
ZXJlZiAqd2YpCiB7CiAJaWYgKHVubGlrZWx5KCFhdG9taWNfaW5jX25vdF96ZXJvKCZ3Zi0+Y291
bnQpKSkKLQkJcmV0dXJuIF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3QocnBtLCB3ZiwgZm4pOwor
CQlyZXR1cm4gX19pbnRlbF93YWtlcmVmX2dldF9maXJzdCh3Zik7CiAKIAlyZXR1cm4gMDsKIH0K
QEAgLTEwMiwxNiArMTExLDEyIEBAIGludGVsX3dha2VyZWZfZ2V0X2lmX2FjdGl2ZShzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YpCiAgKiBSZXR1cm5zOiAwIGlmIHRoZSB3YWtlcmVmIHdhcyByZWxl
YXNlZCBzdWNjZXNzZnVsbHksIG9yIGEgbmVnYXRpdmUgZXJyb3IKICAqIGNvZGUgb3RoZXJ3aXNl
LgogICovCi1zdGF0aWMgaW5saW5lIGludAotaW50ZWxfd2FrZXJlZl9wdXQoc3RydWN0IGludGVs
X3J1bnRpbWVfcG0gKnJwbSwKLQkJICBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsCi0JCSAgaW50
ICgqZm4pKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikpCitzdGF0aWMgaW5saW5lIHZvaWQKK2lu
dGVsX3dha2VyZWZfcHV0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHsKIAlJTlRFTF9XQUtF
UkVGX0JVR19PTihhdG9taWNfcmVhZCgmd2YtPmNvdW50KSA8PSAwKTsKLQlpZiAoYXRvbWljX2Rl
Y19hbmRfbXV0ZXhfbG9jaygmd2YtPmNvdW50LCAmd2YtPm11dGV4KSkKLQkJcmV0dXJuIF9faW50
ZWxfd2FrZXJlZl9wdXRfbGFzdChycG0sIHdmLCBmbik7Ci0KLQlyZXR1cm4gMDsKKwlpZiAodW5s
aWtlbHkoIWF0b21pY19hZGRfdW5sZXNzKCZ3Zi0+Y291bnQsIC0xLCAxKSkpCisJCV9faW50ZWxf
d2FrZXJlZl9wdXRfbGFzdCh3Zik7CiB9CiAKIC8qKgotLSAKMi4yMy4wLnJjMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
