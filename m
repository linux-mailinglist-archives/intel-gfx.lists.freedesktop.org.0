Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1B21AB993
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 09:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51136EB1B;
	Thu, 16 Apr 2020 07:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CB06EB1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 07:18:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20916216-1500050 
 for multiple; Thu, 16 Apr 2020 08:18:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 08:18:04 +0100
Message-Id: <20200416071804.30187-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Move the batch buffer pool from
 the engine to the gt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgdGhlIGludHJvZHVjdGlvbiBvZiAnc29mdC1yYzYnLCB3ZSBhaW0gdG8gcGFyayB0aGUg
ZGV2aWNlIHF1aWNrbHkKYW5kIHRoYXQgcmVzdWx0cyBpbiBmcmVxdWVudCBpZGxpbmcgb2YgdGhl
IHdob2xlIGRldmljZS4gQ3VycmVudGx5IHVwb24KaWRsaW5nIHdlIGZyZWUgdGhlIGJhdGNoIGJ1
ZmZlciBwb29sLCBhbmQgc28gdGhpcyByZW5kZXJzIHRoZSBjYWNoZQppbmVmZmVjdGl2ZSBmb3Ig
bWFueSB3b3JrbG9hZHMuIElmIHdlIHdhbnQgdG8gaGF2ZSBhbiBlZmZlY3RpdmUgY2FjaGUgb2YK
cmVjZW50bHkgYWxsb2NhdGVkIGJ1ZmZlcnMgYXZhaWxhYmxlIGZvciByZXVzZSwgd2UgbmVlZCB0
byBkZWNvdXBsZSB0aGF0CmNhY2hlIGZyb20gdGhlIGVuZ2luZSBwb3dlcm1hbmFnZW1lbnQgYW5k
IG1ha2UgaXQgdGltZXIgYmFzZWQuIEFzIHRoZXJlCmlzIG5vIHJlYXNvbiB0aGVuIHRvIGtlZXAg
aXQgd2l0aGluIHRoZSBlbmdpbmUgKHdoZXJlIGl0IG9uY2UgbWFkZQpyZXRpcmVtZW50IG9yZGVy
IGVhc2llciB0byB0cmFjayksIHdlIGNhbiBtb3ZlIGl0IHVwIHRoZSBoaWVyYXJjaHkgdG8gdGhl
Cm93bmVyIG9mIHRoZSBtZW1vcnkgYWxsb2NhdGlvbnMuCgp2MjogSG9vayB1cCB0byBkZWJ1Z2Zz
L2Ryb3BfY2FjaGVzIHRvIGNsZWFyIHRoZSBjYWNoZSBvbiBkZW1hbmQuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMiArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY2xpZW50X2JsdC5jICAgIHwgICAxIC0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICAyMCArKy0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfYmx0LmMgICAgfCAgMTggKy0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfYmx0LmggICAgfCAgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMgICAgIHwgICA0IC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wbS5jICAgICB8ICAgMiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfcG9vbC5oICAgfCAgMzQgLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDggLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmMgICAgICAgICAgICB8ICAgMyArCiAuLi5sX2VuZ2luZV9wb29sLmMgPT4gaW50ZWxf
Z3RfYnVmZmVyX3Bvb2wuY30gfCAxMTEgKysrKysrKysrKysrLS0tLS0tCiAuLi4vZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X2J1ZmZlcl9wb29sLmggICAgfCAgMzggKysrKysrCiAuLi5sX3R5cGVz
LmggPT4gaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfdHlwZXMuaH0gfCAgMTUgKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgfCAgMTEgKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgICAgICAgICB8ICAgMiAtCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgIDQgKwogMTYgZmlsZXMgY2hhbmdl
ZCwgMTYwIGluc2VydGlvbnMoKyksIDExNCBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oCiByZW5hbWUgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qve2ludGVsX2VuZ2luZV9wb29sLmMgPT4gaW50ZWxfZ3RfYnVm
ZmVyX3Bvb2wuY30gKDUzJSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndF9idWZmZXJfcG9vbC5oCiByZW5hbWUgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qve2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmggPT4gaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfdHlw
ZXMuaH0gKDU0JSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDQ0YzUwNmI3ZTExNy4uMWU5ZWIy
NjkxMmMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtODYsMTEgKzg2LDExIEBAIGd0LXkgKz0g
XAogCWd0L2ludGVsX2VuZ2luZV9jcy5vIFwKIAlndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lm8g
XAogCWd0L2ludGVsX2VuZ2luZV9wbS5vIFwKLQlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKIAln
dC9pbnRlbF9lbmdpbmVfdXNlci5vIFwKIAlndC9pbnRlbF9nZ3R0Lm8gXAogCWd0L2ludGVsX2dn
dHRfZmVuY2luZy5vIFwKIAlndC9pbnRlbF9ndC5vIFwKKwlndC9pbnRlbF9ndF9idWZmZXJfcG9v
bC5vIFwKIAlndC9pbnRlbF9ndF9pcnEubyBcCiAJZ3QvaW50ZWxfZ3RfcG0ubyBcCiAJZ3QvaW50
ZWxfZ3RfcG1faXJxLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NsaWVudF9ibHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
bGllbnRfYmx0LmMKaW5kZXggMDU5OGU1MzgyYTFkLi4zYTE0NmFhMjU5M2IgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwpAQCAtNiw3ICs2LDYg
QEAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHQuaCIK
ICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfcG0uaCIKLSNpbmNsdWRlICJndC9pbnRlbF9lbmdp
bmVfcG9vbC5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2NsaWVudF9ibHQuaCIKICNpbmNsdWRlICJp
OTE1X2dlbV9vYmplY3RfYmx0LmgiCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDUxNzg5OGFhNjM0Yy4uMDQyOTE2YWQzNjI5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTE1
LDggKzE1LDggQEAKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKICNpbmNsdWRl
ICJndC9pbnRlbF9jb250ZXh0LmgiCi0jaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaCIK
ICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgorI2luY2x1ZGUgImd0L2ludGVsX2d0X2J1ZmZlcl9w
b29sLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9y
aW5nLmgiCiAKQEAgLTExOTQsMTMgKzExOTQsMTMgQEAgc3RhdGljIGludCBfX3JlbG9jX2dwdV9h
bGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJCSAgICAgdW5zaWduZWQgaW50IGxl
bikKIHsKIAlzdHJ1Y3QgcmVsb2NfY2FjaGUgKmNhY2hlID0gJmViLT5yZWxvY19jYWNoZTsKLQlz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVm
ZmVyX3Bvb2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAlzdHJ1Y3Qg
aTkxNV92bWEgKmJhdGNoOwogCXUzMiAqY21kOwogCWludCBlcnI7CiAKLQlwb29sID0gaW50ZWxf
ZW5naW5lX2dldF9wb29sKGViLT5lbmdpbmUsIFBBR0VfU0laRSk7CisJcG9vbCA9IGludGVsX2d0
X2dldF9idWZmZXJfcG9vbChlYi0+ZW5naW5lLT5ndCwgUEFHRV9TSVpFKTsKIAlpZiAoSVNfRVJS
KHBvb2wpKQogCQlyZXR1cm4gUFRSX0VSUihwb29sKTsKIApAQCAtMTIyOSw3ICsxMjI5LDcgQEAg
c3RhdGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwK
IAkJZ290byBlcnJfdW5waW47CiAJfQogCi0JZXJyID0gaW50ZWxfZW5naW5lX3Bvb2xfbWFya19h
Y3RpdmUocG9vbCwgcnEpOworCWVyciA9IGludGVsX2d0X2J1ZmZlcl9wb29sX21hcmtfYWN0aXZl
KHBvb2wsIHJxKTsKIAlpZiAoZXJyKQogCQlnb3RvIGVycl9yZXF1ZXN0OwogCkBAIC0xMjcwLDcg
KzEyNzAsNyBAQCBzdGF0aWMgaW50IF9fcmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViLAogZXJyX3VubWFwOgogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAocG9vbC0+
b2JqKTsKIG91dF9wb29sOgotCWludGVsX2VuZ2luZV9wb29sX3B1dChwb29sKTsKKwlpbnRlbF9n
dF9idWZmZXJfcG9vbF9wdXQocG9vbCk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMTg4Nyw3ICsx
ODg3LDcgQEAgc3RhdGljIGludCBlYl9wYXJzZV9waXBlbGluZShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwKIHN0YXRpYyBpbnQgZWJfcGFyc2Uoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlYi0+aTkxNTsKLQlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bv
b2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV92bWEgKnNoYWRvdywgKnRyYW1wb2xpbmU7CiAJ
dW5zaWduZWQgaW50IGxlbjsKIAlpbnQgZXJyOwpAQCAtMTkxMCw3ICsxOTEwLDcgQEAgc3RhdGlj
IGludCBlYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAkJbGVuICs9IEk5MTVf
Q01EX1BBUlNFUl9UUkFNUE9MSU5FX1NJWkU7CiAJfQogCi0JcG9vbCA9IGludGVsX2VuZ2luZV9n
ZXRfcG9vbChlYi0+ZW5naW5lLCBsZW4pOworCXBvb2wgPSBpbnRlbF9ndF9nZXRfYnVmZmVyX3Bv
b2woZWItPmVuZ2luZS0+Z3QsIGxlbik7CiAJaWYgKElTX0VSUihwb29sKSkKIAkJcmV0dXJuIFBU
Ul9FUlIocG9vbCk7CiAKQEAgLTE5NTgsNyArMTk1OCw3IEBAIHN0YXRpYyBpbnQgZWJfcGFyc2Uo
c3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiBlcnJfc2hhZG93OgogCWk5MTVfdm1hX3VucGlu
KHNoYWRvdyk7CiBlcnI6Ci0JaW50ZWxfZW5naW5lX3Bvb2xfcHV0KHBvb2wpOworCWludGVsX2d0
X2J1ZmZlcl9wb29sX3B1dChwb29sKTsKIAlyZXR1cm4gZXJyOwogfQogCkBAIC0yNjQzLDcgKzI2
NDMsNyBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
ICovCiAJZWIucmVxdWVzdC0+YmF0Y2ggPSBiYXRjaDsKIAlpZiAoYmF0Y2gtPnByaXZhdGUpCi0J
CWludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZlKGJhdGNoLT5wcml2YXRlLCBlYi5yZXF1ZXN0
KTsKKwkJaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbWFya19hY3RpdmUoYmF0Y2gtPnByaXZhdGUsIGVi
LnJlcXVlc3QpOwogCiAJdHJhY2VfaTkxNV9yZXF1ZXN0X3F1ZXVlKGViLnJlcXVlc3QsIGViLmJh
dGNoX2ZsYWdzKTsKIAllcnIgPSBlYl9zdWJtaXQoJmViLCBiYXRjaCk7CkBAIC0yNjcyLDcgKzI2
NzIsNyBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CWk5MTVfdm1hX3VucGluKGJhdGNoKTsKIGVycl9wYXJzZToKIAlpZiAoYmF0Y2gtPnByaXZhdGUp
Ci0JCWludGVsX2VuZ2luZV9wb29sX3B1dChiYXRjaC0+cHJpdmF0ZSk7CisJCWludGVsX2d0X2J1
ZmZlcl9wb29sX3B1dChiYXRjaC0+cHJpdmF0ZSk7CiBlcnJfdm1hOgogCWlmIChlYi50cmFtcG9s
aW5lKQogCQlpOTE1X3ZtYV91bnBpbihlYi50cmFtcG9saW5lKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCmluZGV4IGUwMDc5MjE1OGYxMy4uMmZj
NzczN2VmNWY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfYmx0LmMKQEAgLTYsOCArNiw4IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRl
ICJndC9pbnRlbF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiCi0j
aW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5o
IgorI2luY2x1ZGUgImd0L2ludGVsX2d0X2J1ZmZlcl9wb29sLmgiCiAjaW5jbHVkZSAiZ3QvaW50
ZWxfcmluZy5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCIKICNpbmNsdWRlICJpOTE1
X2dlbV9vYmplY3RfYmx0LmgiCkBAIC0xOCw3ICsxOCw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50
ZWxfZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY2UtPnZtLT5pOTE1OwogCWNvbnN0IHUzMiBibG9j
a19zaXplID0gU1pfOE07IC8qIH4xbXMgYXQgOEdpQi9zIHByZWVtcHRpb24gZGVsYXkgKi8KLQlz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVm
ZmVyX3Bvb2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOwogCXU2NCBvZmZz
ZXQ7CiAJdTY0IGNvdW50OwpAQCAtMzMsNyArMzMsNyBAQCBzdHJ1Y3QgaTkxNV92bWEgKmludGVs
X2VtaXRfdm1hX2ZpbGxfYmx0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAljb3VudCA9IGRp
dl91NjQocm91bmRfdXAodm1hLT5zaXplLCBibG9ja19zaXplKSwgYmxvY2tfc2l6ZSk7CiAJc2l6
ZSA9ICgxICsgOCAqIGNvdW50KSAqIHNpemVvZih1MzIpOwogCXNpemUgPSByb3VuZF91cChzaXpl
LCBQQUdFX1NJWkUpOwotCXBvb2wgPSBpbnRlbF9lbmdpbmVfZ2V0X3Bvb2woY2UtPmVuZ2luZSwg
c2l6ZSk7CisJcG9vbCA9IGludGVsX2d0X2dldF9idWZmZXJfcG9vbChjZS0+ZW5naW5lLT5ndCwg
c2l6ZSk7CiAJaWYgKElTX0VSUihwb29sKSkgewogCQllcnIgPSBQVFJfRVJSKHBvb2wpOwogCQln
b3RvIG91dF9wbTsKQEAgLTk2LDcgKzk2LDcgQEAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9lbWl0
X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJcmV0dXJuIGJhdGNoOwog
CiBvdXRfcHV0OgotCWludGVsX2VuZ2luZV9wb29sX3B1dChwb29sKTsKKwlpbnRlbF9ndF9idWZm
ZXJfcG9vbF9wdXQocG9vbCk7CiBvdXRfcG06CiAJaW50ZWxfZW5naW5lX3BtX3B1dChjZS0+ZW5n
aW5lKTsKIAlyZXR1cm4gRVJSX1BUUihlcnIpOwpAQCAtMTE0LDEzICsxMTQsMTMgQEAgaW50IGlu
dGVsX2VtaXRfdm1hX21hcmtfYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSkKIAlpZiAodW5saWtlbHkoZXJyKSkKIAkJcmV0dXJuIGVycjsKIAotCXJl
dHVybiBpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZSh2bWEtPnByaXZhdGUsIHJxKTsKKwly
ZXR1cm4gaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbWFya19hY3RpdmUodm1hLT5wcml2YXRlLCBycSk7
CiB9CiAKIHZvaWQgaW50ZWxfZW1pdF92bWFfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewogCWk5MTVfdm1hX3VucGluKHZtYSk7Ci0JaW50
ZWxfZW5naW5lX3Bvb2xfcHV0KHZtYS0+cHJpdmF0ZSk7CisJaW50ZWxfZ3RfYnVmZmVyX3Bvb2xf
cHV0KHZtYS0+cHJpdmF0ZSk7CiAJaW50ZWxfZW5naW5lX3BtX3B1dChjZS0+ZW5naW5lKTsKIH0K
IApAQCAtMjEzLDcgKzIxMyw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfY29w
eV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gY2UtPnZtLT5pOTE1OwogCWNvbnN0IHUzMiBibG9ja19zaXplID0gU1pfOE07
IC8qIH4xbXMgYXQgOEdpQi9zIHByZWVtcHRpb24gZGVsYXkgKi8KLQlzdHJ1Y3QgaW50ZWxfZW5n
aW5lX3Bvb2xfbm9kZSAqcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAq
cG9vbDsKIAlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOwogCXU2NCBzcmNfb2Zmc2V0LCBkc3Rfb2Zm
c2V0OwogCXU2NCBjb3VudCwgcmVtOwpAQCAtMjI4LDcgKzIyOCw3IEBAIHN0cnVjdCBpOTE1X3Zt
YSAqaW50ZWxfZW1pdF92bWFfY29weV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCWNv
dW50ID0gZGl2X3U2NChyb3VuZF91cChkc3QtPnNpemUsIGJsb2NrX3NpemUpLCBibG9ja19zaXpl
KTsKIAlzaXplID0gKDEgKyAxMSAqIGNvdW50KSAqIHNpemVvZih1MzIpOwogCXNpemUgPSByb3Vu
ZF91cChzaXplLCBQQUdFX1NJWkUpOwotCXBvb2wgPSBpbnRlbF9lbmdpbmVfZ2V0X3Bvb2woY2Ut
PmVuZ2luZSwgc2l6ZSk7CisJcG9vbCA9IGludGVsX2d0X2dldF9idWZmZXJfcG9vbChjZS0+ZW5n
aW5lLT5ndCwgc2l6ZSk7CiAJaWYgKElTX0VSUihwb29sKSkgewogCQllcnIgPSBQVFJfRVJSKHBv
b2wpOwogCQlnb3RvIG91dF9wbTsKQEAgLTMwNyw3ICszMDcsNyBAQCBzdHJ1Y3QgaTkxNV92bWEg
KmludGVsX2VtaXRfdm1hX2NvcHlfYmx0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAlyZXR1
cm4gYmF0Y2g7CiAKIG91dF9wdXQ6Ci0JaW50ZWxfZW5naW5lX3Bvb2xfcHV0KHBvb2wpOworCWlu
dGVsX2d0X2J1ZmZlcl9wb29sX3B1dChwb29sKTsKIG91dF9wbToKIAlpbnRlbF9lbmdpbmVfcG1f
cHV0KGNlLT5lbmdpbmUpOwogCXJldHVybiBFUlJfUFRSKGVycik7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuaAppbmRleCAyNDNhNDNhODc4MjQuLjhi
Y2QzMzZhOTBkYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdF9ibHQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0X2JsdC5oCkBAIC0xMCw3ICsxMCw2IEBACiAKICNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0
LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiCi0jaW5jbHVkZSAiZ3QvaW50ZWxf
ZW5naW5lX3Bvb2wuaCIKICNpbmNsdWRlICJpOTE1X3ZtYS5oIgogCiBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5k
ZXggYjFmODUyN2YwMmM4Li40MTQxZGFjZjZhZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0zMSw3ICszMSw2IEBACiAjaW5jbHVkZSAiaW50ZWxfY29u
dGV4dC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZS5oIgogI2luY2x1ZGUgImludGVsX2VuZ2lu
ZV9wbS5oIgotI2luY2x1ZGUgImludGVsX2VuZ2luZV9wb29sLmgiCiAjaW5jbHVkZSAiaW50ZWxf
ZW5naW5lX3VzZXIuaCIKICNpbmNsdWRlICJpbnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX2d0
X3JlcXVlc3RzLmgiCkBAIC02MzEsOCArNjMwLDYgQEAgc3RhdGljIGludCBlbmdpbmVfc2V0dXBf
Y29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlpbnRlbF9lbmdpbmVfaW5p
dF9fcG0oZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfaW5pdF9yZXRpcmUoZW5naW5lKTsKIAotCWlu
dGVsX2VuZ2luZV9wb29sX2luaXQoJmVuZ2luZS0+cG9vbCk7Ci0KIAkvKiBVc2UgdGhlIHdob2xl
IGRldmljZSBieSBkZWZhdWx0ICovCiAJZW5naW5lLT5zc2V1ID0KIAkJaW50ZWxfc3NldV9mcm9t
X2RldmljZV9pbmZvKCZSVU5USU1FX0lORk8oZW5naW5lLT5pOTE1KS0+c3NldSk7CkBAIC04Mjks
NyArODI2LDYgQEAgdm9pZCBpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24oc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogCWNsZWFudXBfc3RhdHVzX3BhZ2UoZW5naW5lKTsKIAogCWlu
dGVsX2VuZ2luZV9maW5pX3JldGlyZShlbmdpbmUpOwotCWludGVsX2VuZ2luZV9wb29sX2Zpbmko
JmVuZ2luZS0+cG9vbCk7CiAJaW50ZWxfZW5naW5lX2ZpbmlfYnJlYWRjcnVtYnMoZW5naW5lKTsK
IAlpbnRlbF9lbmdpbmVfY2xlYW51cF9jbWRfcGFyc2VyKGVuZ2luZSk7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKaW5kZXggM2JlNjc5NzQxZDIyLi4zOGZkMTY0
MDk2NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9w
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC0x
MCw3ICsxMCw2IEBACiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgiCiAjaW5jbHVkZSAiaW50ZWxf
ZW5naW5lX2hlYXJ0YmVhdC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgotI2luY2x1
ZGUgImludGVsX2VuZ2luZV9wb29sLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKICNpbmNsdWRl
ICJpbnRlbF9ndF9wbS5oIgogI2luY2x1ZGUgImludGVsX3JjNi5oIgpAQCAtMjU1LDcgKzI1NCw2
IEBAIHN0YXRpYyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAK
IAlpbnRlbF9lbmdpbmVfcGFya19oZWFydGJlYXQoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfZGlz
YXJtX2JyZWFkY3J1bWJzKGVuZ2luZSk7Ci0JaW50ZWxfZW5naW5lX3Bvb2xfcGFyaygmZW5naW5l
LT5wb29sKTsKIAogCS8qIE11c3QgYmUgcmVzZXQgdXBvbiBpZGxpbmcsIG9yIHdlIG1heSBtaXNz
IHRoZSBidXN5IHdha2V1cC4gKi8KIAlHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVl
X3ByaW9yaXR5X2hpbnQgIT0gSU5UX01JTik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3Bvb2wuaApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMWJkODljYWRj
M2I3Li4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3Bvb2wuaAorKysgL2Rldi9udWxsCkBAIC0xLDM0ICswLDAgQEAKLS8qCi0gKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUCi0gKgotICogQ29weXJpZ2h0IMKpIDIwMTQtMjAxOCBJbnRl
bCBDb3Jwb3JhdGlvbgotICovCi0KLSNpZm5kZWYgSU5URUxfRU5HSU5FX1BPT0xfSAotI2RlZmlu
ZSBJTlRFTF9FTkdJTkVfUE9PTF9ICi0KLSNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9vbF90eXBl
cy5oIgotI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCi0jaW5jbHVkZSAiaTkxNV9yZXF1ZXN0Lmgi
Ci0KLXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICoKLWludGVsX2VuZ2luZV9nZXRfcG9v
bChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHNpemVfdCBzaXplKTsKLQotc3RhdGlj
IGlubGluZSBpbnQKLWludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfcG9vbF9ub2RlICpub2RlLAotCQkJICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
Ci17Ci0JcmV0dXJuIGk5MTVfYWN0aXZlX2FkZF9yZXF1ZXN0KCZub2RlLT5hY3RpdmUsIHJxKTsK
LX0KLQotc3RhdGljIGlubGluZSB2b2lkCi1pbnRlbF9lbmdpbmVfcG9vbF9wdXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGUpCi17Ci0JaTkxNV9hY3RpdmVfcmVsZWFzZSgmbm9k
ZS0+YWN0aXZlKTsKLX0KLQotdm9pZCBpbnRlbF9lbmdpbmVfcG9vbF9pbml0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfcG9vbCAqcG9vbCk7Ci12b2lkIGludGVsX2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0
IGludGVsX2VuZ2luZV9wb29sICpwb29sKTsKLXZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfZmluaShz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2wpOwotCi0jZW5kaWYgLyogSU5URUxfRU5HSU5F
X1BPT0xfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMu
aAppbmRleCAwMWQ0YmQ3ODFhMmYuLmYzYzlkMzAyZWNmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTIyLDcgKzIyLDYgQEAKICNpbmNsdWRl
ICJpOTE1X3BtdS5oIgogI2luY2x1ZGUgImk5MTVfcHJpb2xpc3RfdHlwZXMuaCIKICNpbmNsdWRl
ICJpOTE1X3NlbGZ0ZXN0LmgiCi0jaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCIK
ICNpbmNsdWRlICJpbnRlbF9zc2V1LmgiCiAjaW5jbHVkZSAiaW50ZWxfdGltZWxpbmVfdHlwZXMu
aCIKICNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCkBAIC00MDEsMTMgKzQwMCw2IEBAIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgewogCQlzdHJ1Y3QgaTkxNV9wbXVfc2FtcGxlIHNhbXBsZVtJOTE1
X0VOR0lORV9TQU1QTEVfQ09VTlRdOwogCX0gcG11OwogCi0JLyoKLQkgKiBBIHBvb2wgb2Ygb2Jq
ZWN0cyB0byB1c2UgYXMgc2hhZG93IGNvcGllcyBvZiBjbGllbnQgYmF0Y2ggYnVmZmVycwotCSAq
IHdoZW4gdGhlIGNvbW1hbmQgcGFyc2VyIGlzIGVuYWJsZWQuIFByZXZlbnRzIHRoZSBjbGllbnQg
ZnJvbQotCSAqIG1vZGlmeWluZyB0aGUgYmF0Y2ggY29udGVudHMgYWZ0ZXIgc29mdHdhcmUgcGFy
c2luZy4KLQkgKi8KLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgcG9vbDsKLQogCXN0cnVjdCBp
bnRlbF9od19zdGF0dXNfcGFnZSBzdGF0dXNfcGFnZTsKIAlzdHJ1Y3QgaTkxNV9jdHhfd29ya2Fy
b3VuZHMgd2FfY3R4OwogCXN0cnVjdCBpOTE1X3dhX2xpc3QgY3R4X3dhX2xpc3Q7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRleCAxYzk5Y2M3MjMwNWEuLjhhZTM3ZWEzODM4OSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgImk5
MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImludGVsX2d0
LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuaCIKICNpbmNsdWRlICJpbnRlbF9n
dF9wbS5oIgogI2luY2x1ZGUgImludGVsX2d0X3JlcXVlc3RzLmgiCiAjaW5jbHVkZSAiaW50ZWxf
bW9jcy5oIgpAQCAtMjYsNiArMjcsNyBAQCB2b2lkIGludGVsX2d0X2luaXRfZWFybHkoc3RydWN0
IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJSU5JVF9MSVNU
X0hFQUQoJmd0LT5jbG9zZWRfdm1hKTsKIAlzcGluX2xvY2tfaW5pdCgmZ3QtPmNsb3NlZF9sb2Nr
KTsKIAorCWludGVsX2d0X2luaXRfYnVmZmVyX3Bvb2woZ3QpOwogCWludGVsX2d0X2luaXRfcmVz
ZXQoZ3QpOwogCWludGVsX2d0X2luaXRfcmVxdWVzdHMoZ3QpOwogCWludGVsX2d0X2luaXRfdGlt
ZWxpbmVzKGd0KTsKQEAgLTY2Miw2ICs2NjQsNyBAQCB2b2lkIGludGVsX2d0X2RyaXZlcl9yZWxl
YXNlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAKIAlpbnRlbF9ndF9wbV9maW5pKGd0KTsKIAlpbnRl
bF9ndF9maW5pX3NjcmF0Y2goZ3QpOworCWludGVsX2d0X2ZpbmlfYnVmZmVyX3Bvb2woZ3QpOwog
fQogCiB2b2lkIGludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGludGVsX2d0ICpn
dCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29s
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9idWZmZXJfcG9vbC5jCnNpbWls
YXJpdHkgaW5kZXggNTMlCnJlbmFtZSBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wb29sLmMKcmVuYW1lIHRvIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X2J1ZmZlcl9wb29sLmMKaW5kZXggMzk3MTg2ODE4MzA1Li5mNGU0MzVmMGZhZmYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuYwpAQCAtOCwxNSArOCwx
NSBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0u
aCIKLSNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9vbC5oIgorI2luY2x1ZGUgImludGVsX2d0X2J1
ZmZlcl9wb29sLmgiCiAKLXN0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICp0b19lbmdpbmUo
c3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sKQorc3RhdGljIHN0cnVjdCBpbnRlbF9ndCAq
dG9fZ3Qoc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sICpwb29sKQogewotCXJldHVybiBjb250
YWluZXJfb2YocG9vbCwgc3RydWN0IGludGVsX2VuZ2luZV9jcywgcG9vbCk7CisJcmV0dXJuIGNv
bnRhaW5lcl9vZihwb29sLCBzdHJ1Y3QgaW50ZWxfZ3QsIGJ1ZmZlcl9wb29sKTsKIH0KIAogc3Rh
dGljIHN0cnVjdCBsaXN0X2hlYWQgKgotYnVja2V0X2Zvcl9zaXplKHN0cnVjdCBpbnRlbF9lbmdp
bmVfcG9vbCAqcG9vbCwgc2l6ZV90IHN6KQorYnVja2V0X2Zvcl9zaXplKHN0cnVjdCBpbnRlbF9n
dF9idWZmZXJfcG9vbCAqcG9vbCwgc2l6ZV90IHN6KQogewogCWludCBuOwogCkBAIC0zMiwxNiAr
MzIsNTAgQEAgYnVja2V0X2Zvcl9zaXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCwg
c2l6ZV90IHN6KQogCXJldHVybiAmcG9vbC0+Y2FjaGVfbGlzdFtuXTsKIH0KIAotc3RhdGljIHZv
aWQgbm9kZV9mcmVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlKQorc3RhdGlj
IHZvaWQgbm9kZV9mcmVlKHN0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbF9ub2RlICpub2RlKQog
ewogCWk5MTVfZ2VtX29iamVjdF9wdXQobm9kZS0+b2JqKTsKIAlpOTE1X2FjdGl2ZV9maW5pKCZu
b2RlLT5hY3RpdmUpOwogCWtmcmVlKG5vZGUpOwogfQogCitzdGF0aWMgdm9pZCBwb29sX2ZyZWVf
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVy
X3Bvb2wgKnBvb2wgPQorCQljb250YWluZXJfb2Yod3JrLCB0eXBlb2YoKnBvb2wpLCB3b3JrLndv
cmspOworCXN0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbF9ub2RlICpub2RlLCAqbmV4dDsKKwl1
bnNpZ25lZCBsb25nIG9sZCA9IGppZmZpZXMgLSBIWjsKKwlib29sIGFjdGl2ZSA9IGZhbHNlOwor
CUxJU1RfSEVBRChzdGFsZSk7CisJaW50IG47CisKKwkvKiBGcmVlIGJ1ZmZlcnMgdGhhdCBoYXZl
IG5vdCBiZWVuIHVzZWQgaW4gdGhlIHBhc3Qgc2Vjb25kICovCisJc3Bpbl9sb2NrX2lycSgmcG9v
bC0+bG9jayk7CisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7
IG4rKykgeworCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0gJnBvb2wtPmNhY2hlX2xpc3Rbbl07
CisKKwkJLyogTW9zdCByZWNlbnQgYXQgaGVhZDsgb2xkZXN0IGF0IHRhaWwgKi8KKwkJbGlzdF9m
b3JfZWFjaF9lbnRyeV9zYWZlX3JldmVyc2Uobm9kZSwgbmV4dCwgbGlzdCwgbGluaykgeworCQkJ
aWYgKHRpbWVfYmVmb3JlKG5vZGUtPmFnZSwgb2xkKSkKKwkJCQlicmVhazsKKworCQkJbGlzdF9t
b3ZlKCZub2RlLT5saW5rLCAmc3RhbGUpOworCQl9CisJCWFjdGl2ZSB8PSAhbGlzdF9lbXB0eShs
aXN0KTsKKwl9CisJc3Bpbl91bmxvY2tfaXJxKCZwb29sLT5sb2NrKTsKKworCWxpc3RfZm9yX2Vh
Y2hfZW50cnlfc2FmZShub2RlLCBuZXh0LCAmc3RhbGUsIGxpbmspCisJCW5vZGVfZnJlZShub2Rl
KTsKKworCWlmIChhY3RpdmUpCisJCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmcG9vbC0+d29yaywK
KwkJCQkgICAgICByb3VuZF9qaWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7Cit9CisKIHN0YXRpYyBp
bnQgcG9vbF9hY3RpdmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiB7Ci0Jc3RydWN0IGludGVs
X2VuZ2luZV9wb29sX25vZGUgKm5vZGUgPQorCXN0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbF9u
b2RlICpub2RlID0KIAkJY29udGFpbmVyX29mKHJlZiwgdHlwZW9mKCpub2RlKSwgYWN0aXZlKTsK
IAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSBub2RlLT5vYmotPmJhc2UucmVzdjsKIAlpbnQgZXJy
OwpAQCAtNjQsMjkgKzk4LDMxIEBAIHN0YXRpYyBpbnQgcG9vbF9hY3RpdmUoc3RydWN0IGk5MTVf
YWN0aXZlICpyZWYpCiBfX2k5MTVfYWN0aXZlX2NhbGwKIHN0YXRpYyB2b2lkIHBvb2xfcmV0aXJl
KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewotCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9u
b2RlICpub2RlID0KKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAqbm9kZSA9CiAJ
CWNvbnRhaW5lcl9vZihyZWYsIHR5cGVvZigqbm9kZSksIGFjdGl2ZSk7Ci0Jc3RydWN0IGludGVs
X2VuZ2luZV9wb29sICpwb29sID0gbm9kZS0+cG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVy
X3Bvb2wgKnBvb2wgPSBub2RlLT5wb29sOwogCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3QgPSBidWNr
ZXRfZm9yX3NpemUocG9vbCwgbm9kZS0+b2JqLT5iYXNlLnNpemUpOwogCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7CiAKLQlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UodG9fZW5naW5l
KHBvb2wpKSk7Ci0KIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMobm9kZS0+b2JqKTsKIAog
CS8qIFJldHVybiB0aGlzIG9iamVjdCB0byB0aGUgc2hyaW5rZXIgcG9vbCAqLwogCWk5MTVfZ2Vt
X29iamVjdF9tYWtlX3B1cmdlYWJsZShub2RlLT5vYmopOwogCiAJc3Bpbl9sb2NrX2lycXNhdmUo
JnBvb2wtPmxvY2ssIGZsYWdzKTsKKwlub2RlLT5hZ2UgPSBqaWZmaWVzOwogCWxpc3RfYWRkKCZu
b2RlLT5saW5rLCBsaXN0KTsKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwb29sLT5sb2NrLCBm
bGFncyk7CisKKwlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnBvb2wtPndvcmssCisJCQkgICAgICBy
b3VuZF9qaWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX3Bvb2xfbm9kZSAqCi1ub2RlX2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wg
KnBvb2wsIHNpemVfdCBzeikKK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9k
ZSAqCitub2RlX2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2wgKnBvb2wsIHNpemVf
dCBzeikKIHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSB0b19lbmdpbmUocG9v
bCk7Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGU7CisJc3RydWN0IGludGVs
X2d0ICpndCA9IHRvX2d0KHBvb2wpOworCXN0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbF9ub2Rl
ICpub2RlOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAKIAlub2RlID0ga21h
bGxvYyhzaXplb2YoKm5vZGUpLApAQCAtOTcsNyArMTMzLDcgQEAgbm9kZV9jcmVhdGUoc3RydWN0
IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBzaXplX3Qgc3opCiAJbm9kZS0+cG9vbCA9IHBvb2w7
CiAJaTkxNV9hY3RpdmVfaW5pdCgmbm9kZS0+YWN0aXZlLCBwb29sX2FjdGl2ZSwgcG9vbF9yZXRp
cmUpOwogCi0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChlbmdpbmUtPmk5
MTUsIHN6KTsKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGd0LT5pOTE1
LCBzeik7CiAJaWYgKElTX0VSUihvYmopKSB7CiAJCWk5MTVfYWN0aXZlX2ZpbmkoJm5vZGUtPmFj
dGl2ZSk7CiAJCWtmcmVlKG5vZGUpOwpAQCAtMTEwLDI2ICsxNDYsMTUgQEAgbm9kZV9jcmVhdGUo
c3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBzaXplX3Qgc3opCiAJcmV0dXJuIG5vZGU7
CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKmxvb2t1cF9wb29sKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3N0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbF9u
b2RlICoKK2ludGVsX2d0X2dldF9idWZmZXJfcG9vbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzaXpl
X3Qgc2l6ZSkKIHsKLQlpZiAoaW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoZW5naW5lKSkKLQkJZW5n
aW5lID0gaW50ZWxfdmlydHVhbF9lbmdpbmVfZ2V0X3NpYmxpbmcoZW5naW5lLCAwKTsKLQotCUdF
TV9CVUdfT04oIWVuZ2luZSk7Ci0JcmV0dXJuICZlbmdpbmUtPnBvb2w7Ci19Ci0KLXN0cnVjdCBp
bnRlbF9lbmdpbmVfcG9vbF9ub2RlICoKLWludGVsX2VuZ2luZV9nZXRfcG9vbChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsIHNpemVfdCBzaXplKQotewotCXN0cnVjdCBpbnRlbF9lbmdp
bmVfcG9vbCAqcG9vbCA9IGxvb2t1cF9wb29sKGVuZ2luZSk7Ci0Jc3RydWN0IGludGVsX2VuZ2lu
ZV9wb29sX25vZGUgKm5vZGU7CisJc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sICpwb29sID0g
Jmd0LT5idWZmZXJfcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAqbm9k
ZTsKIAlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0OwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAJaW50
IHJldDsKIAotCUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9wbV9pc19hd2FrZSh0b19lbmdpbmUo
cG9vbCkpKTsKLQogCXNpemUgPSBQQUdFX0FMSUdOKHNpemUpOwogCWxpc3QgPSBidWNrZXRfZm9y
X3NpemUocG9vbCwgc2l6ZSk7CiAKQEAgLTE1NywzNCArMTgyLDQ4IEBAIGludGVsX2VuZ2luZV9n
ZXRfcG9vbChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHNpemVfdCBzaXplKQogCXJl
dHVybiBub2RlOwogfQogCi12b2lkIGludGVsX2VuZ2luZV9wb29sX2luaXQoc3RydWN0IGludGVs
X2VuZ2luZV9wb29sICpwb29sKQordm9pZCBpbnRlbF9ndF9pbml0X2J1ZmZlcl9wb29sKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sICpwb29sID0g
Jmd0LT5idWZmZXJfcG9vbDsKIAlpbnQgbjsKIAogCXNwaW5fbG9ja19pbml0KCZwb29sLT5sb2Nr
KTsKIAlmb3IgKG4gPSAwOyBuIDwgQVJSQVlfU0laRShwb29sLT5jYWNoZV9saXN0KTsgbisrKQog
CQlJTklUX0xJU1RfSEVBRCgmcG9vbC0+Y2FjaGVfbGlzdFtuXSk7CisJSU5JVF9ERUxBWUVEX1dP
UksoJnBvb2wtPndvcmssIHBvb2xfZnJlZV93b3JrKTsKIH0KIAotdm9pZCBpbnRlbF9lbmdpbmVf
cG9vbF9wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCkKK3N0YXRpYyB2b2lkIHBv
b2xfZnJlZV9pbW0oc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sICpwb29sKQogewogCWludCBu
OwogCisJc3Bpbl9sb2NrX2lycSgmcG9vbC0+bG9jayk7CiAJZm9yIChuID0gMDsgbiA8IEFSUkFZ
X1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykgeworCQlzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVy
X3Bvb2xfbm9kZSAqbm9kZSwgKm5leHQ7CiAJCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3QgPSAmcG9v
bC0+Y2FjaGVfbGlzdFtuXTsKLQkJc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGUs
ICpubjsKIAotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUobm9kZSwgbm4sIGxpc3QsIGxpbmsp
CisJCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShub2RlLCBuZXh0LCBsaXN0LCBsaW5rKQogCQkJ
bm9kZV9mcmVlKG5vZGUpOwotCiAJCUlOSVRfTElTVF9IRUFEKGxpc3QpOwogCX0KKwlzcGluX3Vu
bG9ja19pcnEoJnBvb2wtPmxvY2spOworfQorCit2b2lkIGludGVsX2d0X2ZsdXNoX2J1ZmZlcl9w
b29sKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29s
ICpwb29sID0gJmd0LT5idWZmZXJfcG9vbDsKKworCWlmIChjYW5jZWxfZGVsYXllZF93b3JrX3N5
bmMoJnBvb2wtPndvcmspKQorCQlwb29sX2ZyZWVfaW1tKHBvb2wpOwogfQogCi12b2lkIGludGVs
X2VuZ2luZV9wb29sX2Zpbmkoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sKQordm9pZCBp
bnRlbF9ndF9maW5pX2J1ZmZlcl9wb29sKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0
IGludGVsX2d0X2J1ZmZlcl9wb29sICpwb29sID0gJmd0LT5idWZmZXJfcG9vbDsKIAlpbnQgbjsK
IAorCWludGVsX2d0X2ZsdXNoX2J1ZmZlcl9wb29sKGd0KTsKKwogCWZvciAobiA9IDA7IG4gPCBB
UlJBWV9TSVpFKHBvb2wtPmNhY2hlX2xpc3QpOyBuKyspCiAJCUdFTV9CVUdfT04oIWxpc3RfZW1w
dHkoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X2J1ZmZlcl9wb29sLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9idWZmZXJfcG9vbC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uODRkZGQ4NjE5OTE0Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuaApAQCAtMCwwICsxLDM4IEBACisvKgorICog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE0LTIw
MTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIElOVEVMX0dUX0JVRkZFUl9QT09M
X0gKKyNkZWZpbmUgSU5URUxfR1RfQlVGRkVSX1BPT0xfSAorCisjaW5jbHVkZSA8bGludXgvdHlw
ZXMuaD4KKworI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCisjaW5jbHVkZSAiaW50ZWxfZ3RfYnVm
ZmVyX3Bvb2xfdHlwZXMuaCIKKworc3RydWN0IGludGVsX2d0Oworc3RydWN0IGk5MTVfcmVxdWVz
dDsKKworc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sX25vZGUgKgoraW50ZWxfZ3RfZ2V0X2J1
ZmZlcl9wb29sKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHNpemVfdCBzaXplKTsKKworc3RhdGljIGlu
bGluZSBpbnQKK2ludGVsX2d0X2J1ZmZlcl9wb29sX21hcmtfYWN0aXZlKHN0cnVjdCBpbnRlbF9n
dF9idWZmZXJfcG9vbF9ub2RlICpub2RlLAorCQkJCSBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
K3sKKwlyZXR1cm4gaTkxNV9hY3RpdmVfYWRkX3JlcXVlc3QoJm5vZGUtPmFjdGl2ZSwgcnEpOwor
fQorCitzdGF0aWMgaW5saW5lIHZvaWQKK2ludGVsX2d0X2J1ZmZlcl9wb29sX3B1dChzdHJ1Y3Qg
aW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAqbm9kZSkKK3sKKwlpOTE1X2FjdGl2ZV9yZWxlYXNl
KCZub2RlLT5hY3RpdmUpOworfQorCit2b2lkIGludGVsX2d0X2luaXRfYnVmZmVyX3Bvb2woc3Ry
dWN0IGludGVsX2d0ICpndCk7Cit2b2lkIGludGVsX2d0X2ZsdXNoX2J1ZmZlcl9wb29sKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRlbF9ndF9maW5pX2J1ZmZlcl9wb29sKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpOworCisjZW5kaWYgLyogSU5URUxfR1RfQlVGRkVSX1BPT0xfSCAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2J1ZmZlcl9wb29sX3R5cGVzLmgK
c2ltaWxhcml0eSBpbmRleCA1NCUKcmVuYW1lIGZyb20gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaApyZW5hbWUgdG8gZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfdHlwZXMuaAppbmRleCBlMzFlZTM2MWI3NmYuLmUyOGJk
ZGE3NzFlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3Bvb2xfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9idWZm
ZXJfcG9vbF90eXBlcy5oCkBAIC00LDI2ICs0LDI5IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxNC0y
MDE4IEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAotI2lmbmRlZiBJTlRFTF9FTkdJTkVfUE9PTF9U
WVBFU19ICi0jZGVmaW5lIElOVEVMX0VOR0lORV9QT09MX1RZUEVTX0gKKyNpZm5kZWYgSU5URUxf
R1RfQlVGRkVSX1BPT0xfVFlQRVNfSAorI2RlZmluZSBJTlRFTF9HVF9CVUZGRVJfUE9PTF9UWVBF
U19ICiAKICNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CiAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2su
aD4KKyNpbmNsdWRlIDxsaW51eC93b3JrcXVldWUuaD4KIAogI2luY2x1ZGUgImk5MTVfYWN0aXZl
X3R5cGVzLmgiCiAKIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0OwogCi1zdHJ1Y3QgaW50ZWxf
ZW5naW5lX3Bvb2wgeworc3RydWN0IGludGVsX2d0X2J1ZmZlcl9wb29sIHsKIAlzcGlubG9ja190
IGxvY2s7CiAJc3RydWN0IGxpc3RfaGVhZCBjYWNoZV9saXN0WzRdOworCXN0cnVjdCBkZWxheWVk
X3dvcmsgd29yazsKIH07CiAKLXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlIHsKK3N0cnVj
dCBpbnRlbF9ndF9idWZmZXJfcG9vbF9ub2RlIHsKIAlzdHJ1Y3QgaTkxNV9hY3RpdmUgYWN0aXZl
OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGxpc3RfaGVhZCBs
aW5rOwotCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbDsKKwlzdHJ1Y3QgaW50ZWxfZ3Rf
YnVmZmVyX3Bvb2wgKnBvb2w7CisJdW5zaWduZWQgbG9uZyBhZ2U7CiB9OwogCi0jZW5kaWYgLyog
SU5URUxfRU5HSU5FX1BPT0xfVFlQRVNfSCAqLworI2VuZGlmIC8qIElOVEVMX0dUX0JVRkZFUl9Q
T09MX1RZUEVTX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCmlu
ZGV4IDk2ODkwZGQxMmI1Zi4uMTI3N2M0ZTNhODJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3R5cGVzLmgKQEAgLTE3LDYgKzE3LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfdm1h
LmgiCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3R5cGVzLmgiCisjaW5jbHVkZSAiaW50ZWxfZ3Rf
YnVmZmVyX3Bvb2xfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9sbGNfdHlwZXMuaCIKICNpbmNs
dWRlICJpbnRlbF9yZXNldF90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3JjNl90eXBlcy5oIgpA
QCAtOTcsNiArOTgsMTYgQEAgc3RydWN0IGludGVsX2d0IHsKIAkgKiBSZXNlcnZlZCBmb3IgZXhj
bHVzaXZlIHVzZSBieSB0aGUga2VybmVsLgogCSAqLwogCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtOworCisJLyoKKwkgKiBBIHBvb2wgb2Ygb2JqZWN0cyB0byB1c2UgYXMgc2hhZG93IGNv
cGllcyBvZiBjbGllbnQgYmF0Y2ggYnVmZmVycworCSAqIHdoZW4gdGhlIGNvbW1hbmQgcGFyc2Vy
IGlzIGVuYWJsZWQuIFByZXZlbnRzIHRoZSBjbGllbnQgZnJvbQorCSAqIG1vZGlmeWluZyB0aGUg
YmF0Y2ggY29udGVudHMgYWZ0ZXIgc29mdHdhcmUgcGFyc2luZy4KKwkgKgorCSAqIEJ1ZmZlcnMg
b2xkZXIgdGhhbiAxcyBhcmUgcGVyaW9kaWNhbGx5IHJlYXBlZCBmcm9tIHRoZSBwb29sLAorCSAq
IG9yIG1heSBiZSByZWNsYWltZWQgYnkgdGhlIHNocmlua2VyIGJlZm9yZSB0aGVuLgorCSAqLwor
CXN0cnVjdCBpbnRlbF9ndF9idWZmZXJfcG9vbCBidWZmZXJfcG9vbDsKIH07CiAKIGVudW0gaW50
ZWxfZ3Rfc2NyYXRjaF9maWVsZCB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwpp
bmRleCA0YTUzZGVkN2MyZGQuLmI4ZGQzY2JjODY5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9t
b2NrX2VuZ2luZS5jCkBAIC0yOCw3ICsyOCw2IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNp
bmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCi0j
aW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wuaCIKIAogI2luY2x1ZGUgIm1vY2tfZW5naW5lLmgi
CiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfcmVxdWVzdC5oIgpAQCAtMzI4LDcgKzMyNyw2IEBA
IGludCBtb2NrX2VuZ2luZV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlp
bnRlbF9lbmdpbmVfaW5pdF9leGVjbGlzdHMoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfaW5pdF9f
cG0oZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfaW5pdF9yZXRpcmUoZW5naW5lKTsKLQlpbnRlbF9l
bmdpbmVfcG9vbF9pbml0KCZlbmdpbmUtPnBvb2wpOwogCiAJY2UgPSBjcmVhdGVfa2VybmVsX2Nv
bnRleHQoZW5naW5lKTsKIAlpZiAoSVNfRVJSKGNlKSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKaW5kZXggYWEzNWE1OWYxYzdkLi4yNTQyNmE2ZDBiYzEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jCkBAIC0zMiw2ICszMiw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9kZWJ1
Z2ZzLmg+CiAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgorI2luY2x1ZGUgImd0
L2ludGVsX2d0X2J1ZmZlcl9wb29sLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKICNp
bmNsdWRlICJndC9pbnRlbF9ndF9yZXF1ZXN0cy5oIgogI2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0
LmgiCkBAIC0xNDczLDYgKzE0NzQsOSBAQCBndF9kcm9wX2NhY2hlcyhzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCB1NjQgdmFsKQogCWlmICh2YWwgJiBEUk9QX1JFU0VUX0FDVElWRSAmJiBpbnRlbF9ndF90
ZXJtaW5hbGx5X3dlZGdlZChndCkpCiAJCWludGVsX2d0X2hhbmRsZV9lcnJvcihndCwgQUxMX0VO
R0lORVMsIDAsIE5VTEwpOwogCisJaWYgKHZhbCAmIERST1BfRlJFRUQpCisJCWludGVsX2d0X2Zs
dXNoX2J1ZmZlcl9wb29sKGd0KTsKKwogCXJldHVybiAwOwogfQogCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
