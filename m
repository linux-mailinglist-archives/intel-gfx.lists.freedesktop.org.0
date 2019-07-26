Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A476127
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 10:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DDE6E8B1;
	Fri, 26 Jul 2019 08:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B364F6E8AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 08:46:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17621093-1500050 
 for multiple; Fri, 26 Jul 2019 09:46:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 09:46:04 +0100
Message-Id: <20190726084613.22129-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726084613.22129-1-chris@chris-wilson.co.uk>
References: <20190726084613.22129-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/27] drm/i915/gt: Track timeline activeness in
 enter/exit
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

TGlmdCBtb3ZpbmcgdGhlIHRpbWVsaW5lIHRvL2Zyb20gdGhlIGFjdGl2ZV9saXN0IG9uIGVudGVy
L2V4aXQgaW4gb3JkZXIKdG8gc2hvcnRlbiB0aGUgYWN0aXZlIHRyYWNraW5nIHNwYW4gaW4gY29t
cGFyaXNvbiB0byB0aGUgZXhpc3RpbmcKcGluL3VucGluLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jICAgICAgIHwgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3BtLmMgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgICAgICAgICAgIHwgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
dGltZWxpbmUuYyAgICAgIHwgOTggKysrKysrKy0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuaCAgICAgIHwgIDMgKy0KIC4uLi9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaCAgICB8IDE4ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMgICB8ICAyIC0KIDggZmlsZXMgY2hhbmdlZCwgNjMg
aW5zZXJ0aW9ucygrKSwgNjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcG0uYwppbmRleCBhNWEwYWVmY2MwNGMuLjM5MmExZTRmZGQ3NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTM5LDcgKzM5LDYgQEAgc3RhdGljIHZvaWQg
aTkxNV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJaTkxNV9nZW1f
YmF0Y2hfcG9vbF9maW5pKCZlbmdpbmUtPmJhdGNoX3Bvb2wpOwogCX0KIAotCWludGVsX3RpbWVs
aW5lc19wYXJrKGk5MTUpOwogCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsKIAogCWk5MTVfZ2xvYmFs
c19wYXJrKCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKaW5kZXggZWI0
NmI3ZTNjMWQwLi4yYmFlOWJjZmZjMWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9j
b250ZXh0LmMKQEAgLTI2MSwxMCArMjYxLDEyIEBAIGludCBfX2luaXQgaTkxNV9nbG9iYWxfY29u
dGV4dF9pbml0KHZvaWQpCiB2b2lkIGludGVsX2NvbnRleHRfZW50ZXJfZW5naW5lKHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKIHsKIAlpbnRlbF9lbmdpbmVfcG1fZ2V0KGNlLT5lbmdpbmUpOwor
CWludGVsX3RpbWVsaW5lX2VudGVyKGNlLT5yaW5nLT50aW1lbGluZSk7CiB9CiAKIHZvaWQgaW50
ZWxfY29udGV4dF9leGl0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CisJaW50
ZWxfdGltZWxpbmVfZXhpdChjZS0+cmluZy0+dGltZWxpbmUpOwogCWludGVsX2VuZ2luZV9wbV9w
dXQoY2UtPmVuZ2luZSk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3BtLmMKaW5kZXggNjM0OWJiMDM4YzcyLi43YmJjMjU2MzE5NzkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC05MCw2ICs5MCw3IEBAIHN0YXRpYyBib29s
IHN3aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
CiAKIAkvKiBDaGVjayBhZ2FpbiBvbiB0aGUgbmV4dCByZXRpcmVtZW50LiAqLwogCWVuZ2luZS0+
d2FrZXJlZl9zZXJpYWwgPSBlbmdpbmUtPnNlcmlhbCArIDE7CisJaW50ZWxfdGltZWxpbmVfZW50
ZXIocnEtPnRpbWVsaW5lKTsKIAogCWk5MTVfcmVxdWVzdF9hZGRfYmFycmllcnMocnEpOwogCV9f
aTkxNV9yZXF1ZXN0X2NvbW1pdChycSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmlu
ZGV4IGM4OTljZTM0ZDBkMy4uODhlMGFkOTNiOWE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwpAQCAtMzMwOSw2ICszMzA5LDggQEAgc3RhdGljIHZvaWQgdmlydHVhbF9jb250ZXh0
X2VudGVyKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogCWZvciAobiA9IDA7IG4gPCB2ZS0+
bnVtX3NpYmxpbmdzOyBuKyspCiAJCWludGVsX2VuZ2luZV9wbV9nZXQodmUtPnNpYmxpbmdzW25d
KTsKKworCWludGVsX3RpbWVsaW5lX2VudGVyKGNlLT5yaW5nLT50aW1lbGluZSk7CiB9CiAKIHN0
YXRpYyB2b2lkIHZpcnR1YWxfY29udGV4dF9leGl0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
QEAgLTMzMTYsNiArMzMxOCw4IEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfY29udGV4dF9leGl0KHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAlzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0gY29u
dGFpbmVyX29mKGNlLCB0eXBlb2YoKnZlKSwgY29udGV4dCk7CiAJdW5zaWduZWQgaW50IG47CiAK
KwlpbnRlbF90aW1lbGluZV9leGl0KGNlLT5yaW5nLT50aW1lbGluZSk7CisKIAlmb3IgKG4gPSAw
OyBuIDwgdmUtPm51bV9zaWJsaW5nczsgbisrKQogCQlpbnRlbF9lbmdpbmVfcG1fcHV0KHZlLT5z
aWJsaW5nc1tuXSk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpp
bmRleCA2ZGFhOWViNTllMTkuLjRhZjBiOTgwMWQ5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF90aW1lbGluZS5jCkBAIC0yNzgsNjQgKzI3OCwxMSBAQCB2b2lkIGludGVsX3RpbWVs
aW5lc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXRpbWVsaW5lc19pbml0
KCZpOTE1LT5ndCk7CiB9CiAKLXN0YXRpYyB2b2lkIHRpbWVsaW5lX2FkZF90b19hY3RpdmUoc3Ry
dWN0IGludGVsX3RpbWVsaW5lICp0bCkKLXsKLQlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICpn
dCA9ICZ0bC0+Z3QtPnRpbWVsaW5lczsKLQotCW11dGV4X2xvY2soJmd0LT5tdXRleCk7Ci0JbGlz
dF9hZGQoJnRsLT5saW5rLCAmZ3QtPmFjdGl2ZV9saXN0KTsKLQltdXRleF91bmxvY2soJmd0LT5t
dXRleCk7Ci19Ci0KLXN0YXRpYyB2b2lkIHRpbWVsaW5lX3JlbW92ZV9mcm9tX2FjdGl2ZShzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQotewotCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKmd0
ID0gJnRsLT5ndC0+dGltZWxpbmVzOwotCi0JbXV0ZXhfbG9jaygmZ3QtPm11dGV4KTsKLQlsaXN0
X2RlbCgmdGwtPmxpbmspOwotCW11dGV4X3VubG9jaygmZ3QtPm11dGV4KTsKLX0KLQotc3RhdGlj
IHZvaWQgdGltZWxpbmVzX3Bhcmsoc3RydWN0IGludGVsX2d0ICpndCkKLXsKLQlzdHJ1Y3QgaW50
ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmZ3QtPnRpbWVsaW5lczsKLQlzdHJ1Y3QgaW50
ZWxfdGltZWxpbmUgKnRpbWVsaW5lOwotCi0JbXV0ZXhfbG9jaygmdGltZWxpbmVzLT5tdXRleCk7
Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeSh0aW1lbGluZSwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3Qs
IGxpbmspIHsKLQkJLyoKLQkJICogQWxsIGtub3duIGZlbmNlcyBhcmUgY29tcGxldGVkIHNvIHdl
IGNhbiBzY3JhcAotCQkgKiB0aGUgY3VycmVudCBzeW5jIHBvaW50IHRyYWNraW5nIGFuZCBzdGFy
dCBhZnJlc2gsCi0JCSAqIGFueSBhdHRlbXB0IHRvIHdhaXQgdXBvbiBhIHByZXZpb3VzIHN5bmMg
cG9pbnQKLQkJICogd2lsbCBiZSBza2lwcGVkIGFzIHRoZSBmZW5jZSB3YXMgc2lnbmFsZWQuCi0J
CSAqLwotCQlpOTE1X3N5bmNtYXBfZnJlZSgmdGltZWxpbmUtPnN5bmMpOwotCX0KLQltdXRleF91
bmxvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOwotfQotCi0vKioKLSAqIGludGVsX3RpbWVsaW5lc19w
YXJrIC0gY2FsbGVkIHdoZW4gdGhlIGRyaXZlciBpZGxlcwotICogQGk5MTU6IHRoZSBkcm1faTkx
NV9wcml2YXRlIGRldmljZQotICoKLSAqIFdoZW4gdGhlIGRyaXZlciBpcyBjb21wbGV0ZWx5IGlk
bGUsIHdlIGtub3cgdGhhdCBhbGwgb2Ygb3VyIHN5bmMgcG9pbnRzCi0gKiBoYXZlIGJlZW4gc2ln
bmFsZWQgYW5kIG91ciB0cmFja2luZyBpcyB0aGVuIGVudGlyZWx5IHJlZHVuZGFudC4gQW55IHJl
cXVlc3QKLSAqIHRvIHdhaXQgdXBvbiBhbiBvbGRlciBzeW5jIHBvaW50IHdpbGwgYmUgY29tcGxl
dGVkIGluc3RhbnRseSBhcyB3ZSBrbm93Ci0gKiB0aGUgZmVuY2UgaXMgc2lnbmFsZWQgYW5kIHRo
ZXJlZm9yZSB3ZSB3aWxsIG5vdCBldmVuIGxvb2sgdGhlbSB1cCBpbiB0aGUKLSAqIHN5bmMgcG9p
bnQgbWFwLgotICovCi12b2lkIGludGVsX3RpbWVsaW5lc19wYXJrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQotewotCXRpbWVsaW5lc19wYXJrKCZpOTE1LT5ndCk7Ci19Ci0KIHZvaWQg
aW50ZWxfdGltZWxpbmVfZmluaShzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lKQogewog
CUdFTV9CVUdfT04odGltZWxpbmUtPnBpbl9jb3VudCk7CiAJR0VNX0JVR19PTighbGlzdF9lbXB0
eSgmdGltZWxpbmUtPnJlcXVlc3RzKSk7CiAKLQlpOTE1X3N5bmNtYXBfZnJlZSgmdGltZWxpbmUt
PnN5bmMpOwotCiAJaWYgKHRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSkKIAkJY2FjaGVsaW5lX2Zy
ZWUodGltZWxpbmUtPmh3c3BfY2FjaGVsaW5lKTsKIAllbHNlCkBAIC0zNzAsNiArMzE3LDcgQEAg
aW50IGludGVsX3RpbWVsaW5lX3BpbihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogCWlmICh0
bC0+cGluX2NvdW50KyspCiAJCXJldHVybiAwOwogCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQp
OworCUdFTV9CVUdfT04odGwtPmFjdGl2ZV9jb3VudCk7CiAKIAllcnIgPSBpOTE1X3ZtYV9waW4o
dGwtPmh3c3BfZ2d0dCwgMCwgMCwgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKIAlpZiAoZXJyKQpA
QCAtMzgwLDcgKzMyOCw2IEBAIGludCBpbnRlbF90aW1lbGluZV9waW4oc3RydWN0IGludGVsX3Rp
bWVsaW5lICp0bCkKIAkJb2Zmc2V0X2luX3BhZ2UodGwtPmh3c3Bfb2Zmc2V0KTsKIAogCWNhY2hl
bGluZV9hY3F1aXJlKHRsLT5od3NwX2NhY2hlbGluZSk7Ci0JdGltZWxpbmVfYWRkX3RvX2FjdGl2
ZSh0bCk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMzg5LDYgKzMzNiw0MCBAQCBpbnQgaW50ZWxfdGlt
ZWxpbmVfcGluKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCiAJcmV0dXJuIGVycjsKIH0KIAor
dm9pZCBpbnRlbF90aW1lbGluZV9lbnRlcihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQorewor
CXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZ0bC0+Z3QtPnRpbWVsaW5l
czsKKworCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQpOworCWlmICh0bC0+YWN0aXZlX2NvdW50
KyspCisJCXJldHVybjsKKwlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2NvdW50KTsgLyogb3ZlcmZs
b3c/ICovCisKKwltdXRleF9sb2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKKwlsaXN0X2FkZCgmdGwt
PmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKKwltdXRleF91bmxvY2soJnRpbWVsaW5l
cy0+bXV0ZXgpOworfQorCit2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0IGludGVsX3Rp
bWVsaW5lICp0bCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAm
dGwtPmd0LT50aW1lbGluZXM7CisKKwlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2NvdW50KTsKKwlp
ZiAoLS10bC0+YWN0aXZlX2NvdW50KQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZ0aW1lbGlu
ZXMtPm11dGV4KTsKKwlsaXN0X2RlbCgmdGwtPmxpbmspOworCW11dGV4X3VubG9jaygmdGltZWxp
bmVzLT5tdXRleCk7CisKKwkvKgorCSAqIFNpbmNlIHRoaXMgdGltZWxpbmUgaXMgaWRsZSwgYWxs
IGJhcmllcnMgdXBvbiB3aGljaCB3ZSB3ZXJlIHdhaXRpbmcKKwkgKiBtdXN0IGFsc28gYmUgY29t
cGxldGUgYW5kIHNvIHdlIGNhbiBkaXNjYXJkIHRoZSBsYXN0IHVzZWQgYmFycmllcnMKKwkgKiB3
aXRob3V0IGxvc3Mgb2YgaW5mb3JtYXRpb24uCisJICovCisJaTkxNV9zeW5jbWFwX2ZyZWUoJnRs
LT5zeW5jKTsKK30KKwogc3RhdGljIHUzMiB0aW1lbGluZV9hZHZhbmNlKHN0cnVjdCBpbnRlbF90
aW1lbGluZSAqdGwpCiB7CiAJR0VNX0JVR19PTighdGwtPnBpbl9jb3VudCk7CkBAIC01NDYsMTYg
KzUyNyw5IEBAIHZvaWQgaW50ZWxfdGltZWxpbmVfdW5waW4oc3RydWN0IGludGVsX3RpbWVsaW5l
ICp0bCkKIAlpZiAoLS10bC0+cGluX2NvdW50KQogCQlyZXR1cm47CiAKLQl0aW1lbGluZV9yZW1v
dmVfZnJvbV9hY3RpdmUodGwpOworCUdFTV9CVUdfT04odGwtPmFjdGl2ZV9jb3VudCk7CiAJY2Fj
aGVsaW5lX3JlbGVhc2UodGwtPmh3c3BfY2FjaGVsaW5lKTsKIAotCS8qCi0JICogU2luY2UgdGhp
cyB0aW1lbGluZSBpcyBpZGxlLCBhbGwgYmFyaWVycyB1cG9uIHdoaWNoIHdlIHdlcmUgd2FpdGlu
ZwotCSAqIG11c3QgYWxzbyBiZSBjb21wbGV0ZSBhbmQgc28gd2UgY2FuIGRpc2NhcmQgdGhlIGxh
c3QgdXNlZCBiYXJyaWVycwotCSAqIHdpdGhvdXQgbG9zcyBvZiBpbmZvcm1hdGlvbi4KLQkgKi8K
LQlpOTE1X3N5bmNtYXBfZnJlZSgmdGwtPnN5bmMpOwotCiAJX19pOTE1X3ZtYV91bnBpbih0bC0+
aHdzcF9nZ3R0KTsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfdGltZWxpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgK
aW5kZXggZTA4Y2ViZjY0ODMzLi5mNTgzYWYxYmExOGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuaApAQCAtNzcsOSArNzcsMTEgQEAgc3RhdGljIGlubGluZSBib29s
IGludGVsX3RpbWVsaW5lX3N5bmNfaXNfbGF0ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCwK
IH0KIAogaW50IGludGVsX3RpbWVsaW5lX3BpbihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKTsK
K3ZvaWQgaW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCk7CiBp
bnQgaW50ZWxfdGltZWxpbmVfZ2V0X3NlcW5vKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsCiAJ
CQkgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCQkJICAgICB1MzIgKnNlcW5vKTsKK3Zv
aWQgaW50ZWxfdGltZWxpbmVfZXhpdChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKTsKIHZvaWQg
aW50ZWxfdGltZWxpbmVfdW5waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCk7CiAKIGludCBp
bnRlbF90aW1lbGluZV9yZWFkX2h3c3Aoc3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKQEAgLTg3
LDcgKzg5LDYgQEAgaW50IGludGVsX3RpbWVsaW5lX3JlYWRfaHdzcChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpmcm9tLAogCQkJICAgICB1MzIgKmh3c3Bfb2Zmc2V0KTsKIAogdm9pZCBpbnRlbF90aW1l
bGluZXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Ci12b2lkIGludGVsX3Rp
bWVsaW5lc19wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxf
dGltZWxpbmVzX2Zpbmkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogCiAjZW5kaWYK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oCmluZGV4
IDlhNzFhZWE3YTMzOC4uYjFhOWYwYzU0YmYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmgKQEAgLTI1LDcgKzI1LDI1IEBAIHN0cnVjdCBpbnRl
bF90aW1lbGluZSB7CiAKIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIHRoZSBmbG93
IG9mIHJlcXVlc3RzICovCiAKKwkvKgorCSAqIHBpbl9jb3VudCBhbmQgYWN0aXZlX2NvdW50IHRy
YWNrIGVzc2VudGlhbGx5IHRoZSBzYW1lIHRoaW5nOgorCSAqIEhvdyBtYW55IHJlcXVlc3RzIGFy
ZSBpbiBmbGlnaHQgb3IgbWF5IGJlIHVuZGVyIGNvbnN0cnVjdGlvbi4KKwkgKgorCSAqIFdlIG5l
ZWQgdHdvIGRpc3RpbmN0IGNvdW50ZXJzIHNvIHRoYXQgd2UgY2FuIGFzc2lnbiBkaWZmZXJlbnQK
KwkgKiBsaWZldGltZXMgdG8gdGhlIGV2ZW50cyBmb3IgZGlmZmVyZW50IHVzZS1jYXNlcy4gRm9y
IGV4YW1wbGUsCisJICogd2Ugd2FudCB0byBwZXJtYW5lbnRseSBrZWVwIHRoZSB0aW1lbGluZSBw
aW5uZWQgZm9yIHRoZSBrZXJuZWwKKwkgKiBjb250ZXh0IHNvIHRoYXQgd2UgY2FuIGlzc3VlIHJl
cXVlc3RzIGF0IGFueSB0aW1lIHdpdGhvdXQgaGF2aW5nCisJICogdG8gYWNxdWlyZSBzcGFjZSBp
biB0aGUgR0dUVC4gSG93ZXZlciwgd2Ugd2FudCB0byBrZWVwIHRyYWNraW5nCisJICogdGhlIGFj
dGl2aXR5ICh0byBiZSBhYmxlIHRvIGRldGVjdCB3aGVuIHdlIGJlY29tZSBpZGxlKSBhbG9uZyB0
aGF0CisJICogcGVybWFuZW50bHkgcGlubmVkIHRpbWVsaW5lIGFuZCBzbyBlbmQgdXAgcmVxdWly
aW5nIHR3byBjb3VudGVycy4KKwkgKgorCSAqIE5vdGUgdGhhdCB0aGUgYWN0aXZlX2NvdW50IGlz
IHByb3RlY3RlZCBieSB0aGUgaW50ZWxfdGltZWxpbmUubXV0ZXgsCisJICogYnV0IHRoZSBwaW5f
Y291bnQgaXMgcHJvdGVjdGVkIGJ5IGEgY29tYmluYXRpb24gb2Ygc2VyaWFsaXNhdGlvbgorCSAq
IGZyb20gdGhlIGludGVsX2NvbnRleHQgY2FsbGVyIHBsdXMgaW50ZXJuYWwgYXRvbWljaXR5Lgor
CSAqLwogCXVuc2lnbmVkIGludCBwaW5fY291bnQ7CisJdW5zaWduZWQgaW50IGFjdGl2ZV9jb3Vu
dDsKKwogCWNvbnN0IHUzMiAqaHdzcF9zZXFubzsKIAlzdHJ1Y3QgaTkxNV92bWEgKmh3c3BfZ2d0
dDsKIAl1MzIgaHdzcF9vZmZzZXQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
dGltZWxpbmUuYwppbmRleCBmMGE4NDAwMzAzODIuLmQ1NDExMzY5Nzc0NSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfdGltZWxpbmUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jCkBAIC04MTYsOCArODE2LDYgQEAg
c3RhdGljIGludCBsaXZlX2h3c3BfcmVjeWNsZSh2b2lkICphcmcpCiAKIAkJCWlmIChlcnIpCiAJ
CQkJZ290byBvdXQ7Ci0KLQkJCWludGVsX3RpbWVsaW5lc19wYXJrKGk5MTUpOyAvKiBFbmNvdXJh
Z2UgcmVjeWNsaW5nISAqLwogCQl9IHdoaWxlICghX19pZ3RfdGltZW91dChlbmRfdGltZSwgTlVM
TCkpOwogCX0KIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
