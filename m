Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B1B684F7
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 10:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41398987A;
	Mon, 15 Jul 2019 08:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A79389830
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 08:11:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17303248-1500050 
 for multiple; Mon, 15 Jul 2019 09:09:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jul 2019 09:09:33 +0100
Message-Id: <20190715080946.15593-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715080946.15593-1-chris@chris-wilson.co.uk>
References: <20190715080946.15593-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/24] drm/i915/gt: Track timeline activeness in
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
Z3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMgICB8ICAyIC0KIDggZmlsZXMgY2hhbmdlZCwgNDYgaW5z
ZXJ0aW9ucygrKSwgNjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcG0uYwppbmRleCA4ZmFmMjYyMjc4YWUuLjE5NWVlNmVlZGFjMCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTM5LDcgKzM5LDYgQEAgc3RhdGljIHZvaWQgaTkx
NV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJaTkxNV9nZW1fYmF0
Y2hfcG9vbF9maW5pKCZlbmdpbmUtPmJhdGNoX3Bvb2wpOwogCX0KIAotCWludGVsX3RpbWVsaW5l
c19wYXJrKGk5MTUpOwogCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsKIAogCWk5MTVfZ2xvYmFsc19w
YXJrKCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKaW5kZXggODkzOGY3
OTg2MDhiLi42YmVhNWQ5ZDhkY2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0LmMKQEAgLTIzMiwxMCArMjMyLDEyIEBAIGludCBfX2luaXQgaTkxNV9nbG9iYWxfY29udGV4
dF9pbml0KHZvaWQpCiB2b2lkIGludGVsX2NvbnRleHRfZW50ZXJfZW5naW5lKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSkKIHsKIAlpbnRlbF9lbmdpbmVfcG1fZ2V0KGNlLT5lbmdpbmUpOworCWlu
dGVsX3RpbWVsaW5lX2VudGVyKGNlLT5yaW5nLT50aW1lbGluZSk7CiB9CiAKIHZvaWQgaW50ZWxf
Y29udGV4dF9leGl0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CisJaW50ZWxf
dGltZWxpbmVfZXhpdChjZS0+cmluZy0+dGltZWxpbmUpOwogCWludGVsX2VuZ2luZV9wbV9wdXQo
Y2UtPmVuZ2luZSk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bt
LmMKaW5kZXggZTc0ZmJmMDRhNjhkLi4wNzJmNjVlNmEwOWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC04OSw2ICs4OSw3IEBAIHN0YXRpYyBib29sIHN3
aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAK
IAkvKiBDaGVjayBhZ2FpbiBvbiB0aGUgbmV4dCByZXRpcmVtZW50LiAqLwogCWVuZ2luZS0+d2Fr
ZXJlZl9zZXJpYWwgPSBlbmdpbmUtPnNlcmlhbCArIDE7CisJaW50ZWxfdGltZWxpbmVfZW50ZXIo
cnEtPnRpbWVsaW5lKTsKIAogCWk5MTVfcmVxdWVzdF9hZGRfYmFycmllcnMocnEpOwogCV9faTkx
NV9yZXF1ZXN0X2NvbW1pdChycSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4
IGZjNGM3NzU1NWUwNi4uYjViMmI5MzlkNWQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwpAQCAtMzIxNSw2ICszMjE1LDggQEAgc3RhdGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2Vu
dGVyKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogCWZvciAobiA9IDA7IG4gPCB2ZS0+bnVt
X3NpYmxpbmdzOyBuKyspCiAJCWludGVsX2VuZ2luZV9wbV9nZXQodmUtPnNpYmxpbmdzW25dKTsK
KworCWludGVsX3RpbWVsaW5lX2VudGVyKGNlLT5yaW5nLT50aW1lbGluZSk7CiB9CiAKIHN0YXRp
YyB2b2lkIHZpcnR1YWxfY29udGV4dF9leGl0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKQEAg
LTMyMjIsNiArMzIyNCw4IEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfY29udGV4dF9leGl0KHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKIAlzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0gY29udGFp
bmVyX29mKGNlLCB0eXBlb2YoKnZlKSwgY29udGV4dCk7CiAJdW5zaWduZWQgaW50IG47CiAKKwlp
bnRlbF90aW1lbGluZV9leGl0KGNlLT5yaW5nLT50aW1lbGluZSk7CisKIAlmb3IgKG4gPSAwOyBu
IDwgdmUtPm51bV9zaWJsaW5nczsgbisrKQogCQlpbnRlbF9lbmdpbmVfcG1fcHV0KHZlLT5zaWJs
aW5nc1tuXSk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRl
eCA2ZGFhOWViNTllMTkuLjRhZjBiOTgwMWQ5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCkBAIC0yNzgsNjQgKzI3OCwxMSBAQCB2b2lkIGludGVsX3RpbWVsaW5l
c19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXRpbWVsaW5lc19pbml0KCZp
OTE1LT5ndCk7CiB9CiAKLXN0YXRpYyB2b2lkIHRpbWVsaW5lX2FkZF90b19hY3RpdmUoc3RydWN0
IGludGVsX3RpbWVsaW5lICp0bCkKLXsKLQlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICpndCA9
ICZ0bC0+Z3QtPnRpbWVsaW5lczsKLQotCW11dGV4X2xvY2soJmd0LT5tdXRleCk7Ci0JbGlzdF9h
ZGQoJnRsLT5saW5rLCAmZ3QtPmFjdGl2ZV9saXN0KTsKLQltdXRleF91bmxvY2soJmd0LT5tdXRl
eCk7Ci19Ci0KLXN0YXRpYyB2b2lkIHRpbWVsaW5lX3JlbW92ZV9mcm9tX2FjdGl2ZShzdHJ1Y3Qg
aW50ZWxfdGltZWxpbmUgKnRsKQotewotCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKmd0ID0g
JnRsLT5ndC0+dGltZWxpbmVzOwotCi0JbXV0ZXhfbG9jaygmZ3QtPm11dGV4KTsKLQlsaXN0X2Rl
bCgmdGwtPmxpbmspOwotCW11dGV4X3VubG9jaygmZ3QtPm11dGV4KTsKLX0KLQotc3RhdGljIHZv
aWQgdGltZWxpbmVzX3Bhcmsoc3RydWN0IGludGVsX2d0ICpndCkKLXsKLQlzdHJ1Y3QgaW50ZWxf
Z3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmZ3QtPnRpbWVsaW5lczsKLQlzdHJ1Y3QgaW50ZWxf
dGltZWxpbmUgKnRpbWVsaW5lOwotCi0JbXV0ZXhfbG9jaygmdGltZWxpbmVzLT5tdXRleCk7Ci0J
bGlzdF9mb3JfZWFjaF9lbnRyeSh0aW1lbGluZSwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxp
bmspIHsKLQkJLyoKLQkJICogQWxsIGtub3duIGZlbmNlcyBhcmUgY29tcGxldGVkIHNvIHdlIGNh
biBzY3JhcAotCQkgKiB0aGUgY3VycmVudCBzeW5jIHBvaW50IHRyYWNraW5nIGFuZCBzdGFydCBh
ZnJlc2gsCi0JCSAqIGFueSBhdHRlbXB0IHRvIHdhaXQgdXBvbiBhIHByZXZpb3VzIHN5bmMgcG9p
bnQKLQkJICogd2lsbCBiZSBza2lwcGVkIGFzIHRoZSBmZW5jZSB3YXMgc2lnbmFsZWQuCi0JCSAq
LwotCQlpOTE1X3N5bmNtYXBfZnJlZSgmdGltZWxpbmUtPnN5bmMpOwotCX0KLQltdXRleF91bmxv
Y2soJnRpbWVsaW5lcy0+bXV0ZXgpOwotfQotCi0vKioKLSAqIGludGVsX3RpbWVsaW5lc19wYXJr
IC0gY2FsbGVkIHdoZW4gdGhlIGRyaXZlciBpZGxlcwotICogQGk5MTU6IHRoZSBkcm1faTkxNV9w
cml2YXRlIGRldmljZQotICoKLSAqIFdoZW4gdGhlIGRyaXZlciBpcyBjb21wbGV0ZWx5IGlkbGUs
IHdlIGtub3cgdGhhdCBhbGwgb2Ygb3VyIHN5bmMgcG9pbnRzCi0gKiBoYXZlIGJlZW4gc2lnbmFs
ZWQgYW5kIG91ciB0cmFja2luZyBpcyB0aGVuIGVudGlyZWx5IHJlZHVuZGFudC4gQW55IHJlcXVl
c3QKLSAqIHRvIHdhaXQgdXBvbiBhbiBvbGRlciBzeW5jIHBvaW50IHdpbGwgYmUgY29tcGxldGVk
IGluc3RhbnRseSBhcyB3ZSBrbm93Ci0gKiB0aGUgZmVuY2UgaXMgc2lnbmFsZWQgYW5kIHRoZXJl
Zm9yZSB3ZSB3aWxsIG5vdCBldmVuIGxvb2sgdGhlbSB1cCBpbiB0aGUKLSAqIHN5bmMgcG9pbnQg
bWFwLgotICovCi12b2lkIGludGVsX3RpbWVsaW5lc19wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQotewotCXRpbWVsaW5lc19wYXJrKCZpOTE1LT5ndCk7Ci19Ci0KIHZvaWQgaW50
ZWxfdGltZWxpbmVfZmluaShzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lKQogewogCUdF
TV9CVUdfT04odGltZWxpbmUtPnBpbl9jb3VudCk7CiAJR0VNX0JVR19PTighbGlzdF9lbXB0eSgm
dGltZWxpbmUtPnJlcXVlc3RzKSk7CiAKLQlpOTE1X3N5bmNtYXBfZnJlZSgmdGltZWxpbmUtPnN5
bmMpOwotCiAJaWYgKHRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSkKIAkJY2FjaGVsaW5lX2ZyZWUo
dGltZWxpbmUtPmh3c3BfY2FjaGVsaW5lKTsKIAllbHNlCkBAIC0zNzAsNiArMzE3LDcgQEAgaW50
IGludGVsX3RpbWVsaW5lX3BpbihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogCWlmICh0bC0+
cGluX2NvdW50KyspCiAJCXJldHVybiAwOwogCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQpOwor
CUdFTV9CVUdfT04odGwtPmFjdGl2ZV9jb3VudCk7CiAKIAllcnIgPSBpOTE1X3ZtYV9waW4odGwt
Pmh3c3BfZ2d0dCwgMCwgMCwgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKIAlpZiAoZXJyKQpAQCAt
MzgwLDcgKzMyOCw2IEBAIGludCBpbnRlbF90aW1lbGluZV9waW4oc3RydWN0IGludGVsX3RpbWVs
aW5lICp0bCkKIAkJb2Zmc2V0X2luX3BhZ2UodGwtPmh3c3Bfb2Zmc2V0KTsKIAogCWNhY2hlbGlu
ZV9hY3F1aXJlKHRsLT5od3NwX2NhY2hlbGluZSk7Ci0JdGltZWxpbmVfYWRkX3RvX2FjdGl2ZSh0
bCk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMzg5LDYgKzMzNiw0MCBAQCBpbnQgaW50ZWxfdGltZWxp
bmVfcGluKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCiAJcmV0dXJuIGVycjsKIH0KIAordm9p
ZCBpbnRlbF90aW1lbGluZV9lbnRlcihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQoreworCXN0
cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZ0bC0+Z3QtPnRpbWVsaW5lczsK
KworCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQpOworCWlmICh0bC0+YWN0aXZlX2NvdW50Kysp
CisJCXJldHVybjsKKwlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2NvdW50KTsgLyogb3ZlcmZsb3c/
ICovCisKKwltdXRleF9sb2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKKwlsaXN0X2FkZCgmdGwtPmxp
bmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKKwltdXRleF91bmxvY2soJnRpbWVsaW5lcy0+
bXV0ZXgpOworfQorCit2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0IGludGVsX3RpbWVs
aW5lICp0bCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmdGwt
Pmd0LT50aW1lbGluZXM7CisKKwlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2NvdW50KTsKKwlpZiAo
LS10bC0+YWN0aXZlX2NvdW50KQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZ0aW1lbGluZXMt
Pm11dGV4KTsKKwlsaXN0X2RlbCgmdGwtPmxpbmspOworCW11dGV4X3VubG9jaygmdGltZWxpbmVz
LT5tdXRleCk7CisKKwkvKgorCSAqIFNpbmNlIHRoaXMgdGltZWxpbmUgaXMgaWRsZSwgYWxsIGJh
cmllcnMgdXBvbiB3aGljaCB3ZSB3ZXJlIHdhaXRpbmcKKwkgKiBtdXN0IGFsc28gYmUgY29tcGxl
dGUgYW5kIHNvIHdlIGNhbiBkaXNjYXJkIHRoZSBsYXN0IHVzZWQgYmFycmllcnMKKwkgKiB3aXRo
b3V0IGxvc3Mgb2YgaW5mb3JtYXRpb24uCisJICovCisJaTkxNV9zeW5jbWFwX2ZyZWUoJnRsLT5z
eW5jKTsKK30KKwogc3RhdGljIHUzMiB0aW1lbGluZV9hZHZhbmNlKHN0cnVjdCBpbnRlbF90aW1l
bGluZSAqdGwpCiB7CiAJR0VNX0JVR19PTighdGwtPnBpbl9jb3VudCk7CkBAIC01NDYsMTYgKzUy
Nyw5IEBAIHZvaWQgaW50ZWxfdGltZWxpbmVfdW5waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bCkKIAlpZiAoLS10bC0+cGluX2NvdW50KQogCQlyZXR1cm47CiAKLQl0aW1lbGluZV9yZW1vdmVf
ZnJvbV9hY3RpdmUodGwpOworCUdFTV9CVUdfT04odGwtPmFjdGl2ZV9jb3VudCk7CiAJY2FjaGVs
aW5lX3JlbGVhc2UodGwtPmh3c3BfY2FjaGVsaW5lKTsKIAotCS8qCi0JICogU2luY2UgdGhpcyB0
aW1lbGluZSBpcyBpZGxlLCBhbGwgYmFyaWVycyB1cG9uIHdoaWNoIHdlIHdlcmUgd2FpdGluZwot
CSAqIG11c3QgYWxzbyBiZSBjb21wbGV0ZSBhbmQgc28gd2UgY2FuIGRpc2NhcmQgdGhlIGxhc3Qg
dXNlZCBiYXJyaWVycwotCSAqIHdpdGhvdXQgbG9zcyBvZiBpbmZvcm1hdGlvbi4KLQkgKi8KLQlp
OTE1X3N5bmNtYXBfZnJlZSgmdGwtPnN5bmMpOwotCiAJX19pOTE1X3ZtYV91bnBpbih0bC0+aHdz
cF9nZ3R0KTsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
dGltZWxpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgKaW5k
ZXggZTA4Y2ViZjY0ODMzLi5mNTgzYWYxYmExOGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfdGltZWxpbmUuaApAQCAtNzcsOSArNzcsMTEgQEAgc3RhdGljIGlubGluZSBib29sIGlu
dGVsX3RpbWVsaW5lX3N5bmNfaXNfbGF0ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCwKIH0K
IAogaW50IGludGVsX3RpbWVsaW5lX3BpbihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKTsKK3Zv
aWQgaW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCk7CiBpbnQg
aW50ZWxfdGltZWxpbmVfZ2V0X3NlcW5vKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsCiAJCQkg
ICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCQkJICAgICB1MzIgKnNlcW5vKTsKK3ZvaWQg
aW50ZWxfdGltZWxpbmVfZXhpdChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKTsKIHZvaWQgaW50
ZWxfdGltZWxpbmVfdW5waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCk7CiAKIGludCBpbnRl
bF90aW1lbGluZV9yZWFkX2h3c3Aoc3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKQEAgLTg3LDcg
Kzg5LDYgQEAgaW50IGludGVsX3RpbWVsaW5lX3JlYWRfaHdzcChzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpmcm9tLAogCQkJICAgICB1MzIgKmh3c3Bfb2Zmc2V0KTsKIAogdm9pZCBpbnRlbF90aW1lbGlu
ZXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Ci12b2lkIGludGVsX3RpbWVs
aW5lc19wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfdGlt
ZWxpbmVzX2Zpbmkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogCiAjZW5kaWYKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oCmluZGV4IDlh
NzFhZWE3YTMzOC4uYjgyMGVlNzZiN2Y1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3RpbWVsaW5lX3R5cGVzLmgKQEAgLTU4LDYgKzU4LDcgQEAgc3RydWN0IGludGVsX3Rp
bWVsaW5lIHsKIAkgKi8KIAlzdHJ1Y3QgaTkxNV9zeW5jbWFwICpzeW5jOwogCisJdW5zaWduZWQg
aW50IGFjdGl2ZV9jb3VudDsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7CiAJc3RydWN0IGludGVs
X2d0ICpndDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
dGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMK
aW5kZXggZjBhODQwMDMwMzgyLi5kNTQxMTM2OTc3NDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfdGltZWxpbmUuYwpAQCAtODE2LDggKzgxNiw2IEBAIHN0YXRpYyBpbnQg
bGl2ZV9od3NwX3JlY3ljbGUodm9pZCAqYXJnKQogCiAJCQlpZiAoZXJyKQogCQkJCWdvdG8gb3V0
OwotCi0JCQlpbnRlbF90aW1lbGluZXNfcGFyayhpOTE1KTsgLyogRW5jb3VyYWdlIHJlY3ljbGlu
ZyEgKi8KIAkJfSB3aGlsZSAoIV9faWd0X3RpbWVvdXQoZW5kX3RpbWUsIE5VTEwpKTsKIAl9CiAK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
