Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A61B07151A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8BC8989A;
	Tue, 23 Jul 2019 09:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59E08973E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 09:27:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17528439-1500050 
 for multiple; Tue, 23 Jul 2019 10:25:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:25:48 +0100
Message-Id: <20190723092550.2443-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190723092550.2443-1-chris@chris-wilson.co.uk>
References: <20190723092550.2443-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Provde a local intel_context.vm
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

VHJhY2sgdGhlIGN1cnJlbnRseSBib3VuZCBhZGRyZXNzIHNwYWNlIHVzZWQgYnkgdGhlIEhXIGNv
bnRleHQuIE1pbm9yCmNvbnZlcnNpb25zIHRvIHVzZSB0aGUgbG9jYWwgaW50ZWxfY29udGV4dC52
bSBhcmUgbWFkZSwgbGVhdmluZyBiZWhpbmQKc29tZSBtb3JlIHN1cmdlcnkgcmVxdWlyZWQgdG8g
bWFrZSBpbnRlbF9jb250ZXh0IHRoZSBwcmltYXJ5IHRocm91Z2ggdGhlCnNlbGZ0ZXN0cy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCAgNCAr
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgICAgIHwg
MTUgKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jICAgIHwgMTEgKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfYmx0LmMgICAgfCAgNiArLS0tLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgICAgICB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCAgICAgfCAgNCArKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgICAgIHwgIDkgKysrLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAgICAgIHwgIDYgKysr
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMgICAgICAgICAgICAgIHwg
IDIgKy0KIDEwIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRf
Ymx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCmlu
ZGV4IDZmNTM3ZThlNGRlYS4uMjMxMmEwYzZhZjg5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKQEAgLTI1MCwxMyArMjUwLDExIEBAIGludCBp
OTE1X2dlbV9zY2hlZHVsZV9maWxsX3BhZ2VzX2JsdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqLAogCQkJCSAgICAgdTMyIHZhbHVlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKLQlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4ID0gY2UtPmdlbV9jb250ZXh0OwotCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
ID0gY3R4LT52bSA/OiAmaTkxNS0+Z2d0dC52bTsKIAlzdHJ1Y3QgY2xlYXJfcGFnZXNfd29yayAq
d29yazsKIAlzdHJ1Y3QgaTkxNV9zbGVldmUgKnNsZWV2ZTsKIAlpbnQgZXJyOwogCi0Jc2xlZXZl
ID0gY3JlYXRlX3NsZWV2ZSh2bSwgb2JqLCBwYWdlcywgcGFnZV9zaXplcyk7CisJc2xlZXZlID0g
Y3JlYXRlX3NsZWV2ZShjZS0+dm0sIG9iaiwgcGFnZXMsIHBhZ2Vfc2l6ZXMpOwogCWlmIChJU19F
UlIoc2xlZXZlKSkKIAkJcmV0dXJuIFBUUl9FUlIoc2xlZXZlKTsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggMGY2YjA2NzhmNTQ4Li5iMjhjN2Nh
NjgxYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpA
QCAtNDc1LDEwICs0NzUsMTggQEAgc3RhdGljIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKgog
X19zZXRfcHBndHQoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwgc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0pCiB7CiAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqb2xkID0gY3R4
LT52bTsKKwlzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIGl0OworCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZTsKIAogCWN0eC0+dm0gPSBpOTE1X3ZtX2dldCh2bSk7CiAJY3R4LT5kZXNjX3Rl
bXBsYXRlID0gZGVmYXVsdF9kZXNjX3RlbXBsYXRlKGN0eC0+aTkxNSwgdm0pOwogCisJZm9yX2Vh
Y2hfZ2VtX2VuZ2luZShjZSwgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQp
IHsKKwkJaTkxNV92bV9wdXQoY2UtPnZtKTsKKwkJY2UtPnZtID0gaTkxNV92bV9nZXQodm0pOwor
CX0KKwlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CisKIAlyZXR1cm4gb2xk
OwogfQogCkBAIC0xMDA0LDcgKzEwMTIsNyBAQCBzdGF0aWMgdm9pZCBzZXRfcHBndHRfYmFycmll
cih2b2lkICpkYXRhKQogCiBzdGF0aWMgaW50IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQogewotCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtID0gcnEtPmdlbV9jb250ZXh0LT52bTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSA9IHJxLT5od19jb250ZXh0LT52bTsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUg
PSBycS0+ZW5naW5lOwogCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7CiAJdTMyICpjczsK
QEAgLTExMTMsOSArMTEyMSw4IEBAIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkx
NV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKIAkJCQkgICBzZXRfcHBndHRfYmFycmllciwKIAkJ
CQkgICBvbGQpOwogCWlmIChlcnIpIHsKLQkJY3R4LT52bSA9IG9sZDsKLQkJY3R4LT5kZXNjX3Rl
bXBsYXRlID0gZGVmYXVsdF9kZXNjX3RlbXBsYXRlKGN0eC0+aTkxNSwgb2xkKTsKLQkJaTkxNV92
bV9wdXQodm0pOworCQlpOTE1X3ZtX3B1dChfX3NldF9wcGd0dChjdHgsIG9sZCkpOworCQlpOTE1
X3ZtX3B1dChvbGQpOwogCX0KIAogdW5sb2NrOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggOGEyMDQ3YzRlN2MzLi5jYmQ3YzZlM2ExZjgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpA
QCAtMjIzLDcgKzIyMyw2IEBAIHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgewogCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZTsgLyoqIGVuZ2luZSB0byBxdWV1ZSB0aGUgcmVxdWVzdCB0byAq
LwogCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjb250ZXh0OyAvKiBsb2dpY2FsIHN0YXRlIGZvciB0
aGUgcmVxdWVzdCAqLwogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpnZW1fY29udGV4dDsgLyoq
IGNhbGxlcidzIGNvbnRleHQgKi8KLQlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsgLyoq
IEdUVCBhbmQgdm1hIGZvciB0aGUgcmVxdWVzdCAqLwogCiAJc3RydWN0IGk5MTVfcmVxdWVzdCAq
cmVxdWVzdDsgLyoqIG91ciByZXF1ZXN0IHRvIGJ1aWxkICovCiAJc3RydWN0IGk5MTVfdm1hICpi
YXRjaDsgLyoqIGlkZW50aXR5IG9mIHRoZSBiYXRjaCBvYmovdm1hICovCkBAIC02OTcsNyArNjk2
LDcgQEAgc3RhdGljIGludCBlYl9yZXNlcnZlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQog
CiAJCWNhc2UgMToKIAkJCS8qIFRvbyBmcmFnbWVudGVkLCB1bmJpbmQgZXZlcnl0aGluZyBhbmQg
cmV0cnkgKi8KLQkJCWVyciA9IGk5MTVfZ2VtX2V2aWN0X3ZtKGViLT52bSk7CisJCQllcnIgPSBp
OTE1X2dlbV9ldmljdF92bShlYi0+Y29udGV4dC0+dm0pOwogCQkJaWYgKGVycikKIAkJCQlyZXR1
cm4gZXJyOwogCQkJYnJlYWs7CkBAIC03MjUsMTIgKzcyNCw4IEBAIHN0YXRpYyBpbnQgZWJfc2Vs
ZWN0X2NvbnRleHQoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJCXJldHVybiAtRU5PRU5U
OwogCiAJZWItPmdlbV9jb250ZXh0ID0gY3R4OwotCWlmIChjdHgtPnZtKSB7Ci0JCWViLT52bSA9
IGN0eC0+dm07CisJaWYgKGN0eC0+dm0pCiAJCWViLT5pbnZhbGlkX2ZsYWdzIHw9IEVYRUNfT0JK
RUNUX05FRURTX0dUVDsKLQl9IGVsc2UgewotCQllYi0+dm0gPSAmZWItPmk5MTUtPmdndHQudm07
Ci0JfQogCiAJZWItPmNvbnRleHRfZmxhZ3MgPSAwOwogCWlmICh0ZXN0X2JpdChVQ09OVEVYVF9O
T19aRVJPTUFQLCAmY3R4LT51c2VyX2ZsYWdzKSkKQEAgLTgzMiw3ICs4MjcsNyBAQCBzdGF0aWMg
aW50IGViX2xvb2t1cF92bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCQkJZ290byBl
cnJfdm1hOwogCQl9CiAKLQkJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCBlYi0+dm0sIE5V
TEwpOworCQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIGViLT5jb250ZXh0LT52bSwgTlVM
TCk7CiAJCWlmIChJU19FUlIodm1hKSkgewogCQkJZXJyID0gUFRSX0VSUih2bWEpOwogCQkJZ290
byBlcnJfb2JqOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdF9ibHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
Ymx0LmMKaW5kZXggY2I0MmUzYTMxMmUyLi42ODUwNjRhZjMyZDEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwpAQCAtNDcsMTUgKzQ3LDExIEBA
IGludCBpOTE1X2dlbV9vYmplY3RfZmlsbF9ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKIAkJCSAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQkJICAgICB1MzIgdmFs
dWUpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFz
ZS5kZXYpOwotCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBjZS0+Z2VtX2NvbnRleHQ7
Ci0Jc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSBjdHgtPnZtID86ICZpOTE1LT5nZ3R0
LnZtOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwog
CWludCBlcnI7CiAKLQkvKiBYWFg6IGNlLT52bSBwbGVhc2UgKi8KLQl2bWEgPSBpOTE1X3ZtYV9p
bnN0YW5jZShvYmosIHZtLCBOVUxMKTsKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIGNl
LT52bSwgTlVMTCk7CiAJaWYgKElTX0VSUih2bWEpKQogCQlyZXR1cm4gUFRSX0VSUih2bWEpOwog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y29udGV4dC5jCmluZGV4IGJiZDE3ZDRiOGZmZC4uN2Y5ZjY3MDFiMzJjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpA
QCAtNzQ3LDcgKzc0Nyw3IEBAIGVtaXRfcnBjc19xdWVyeShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAogCiAJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX2Nhbl9zdG9yZV9kd29yZChj
ZS0+ZW5naW5lKSk7CiAKLQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIGNlLT5nZW1fY29u
dGV4dC0+dm0sIE5VTEwpOworCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgY2UtPnZtLCBO
VUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpCiAJCXJldHVybiBQVFJfRVJSKHZtYSk7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwppbmRleCA5MjkyYjZjYTVlOWMuLjllNGY1
MWNlNTJmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwpAQCAtMTkx
LDYgKzE5MSw4IEBAIGludGVsX2NvbnRleHRfaW5pdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
CiAJa3JlZl9pbml0KCZjZS0+cmVmKTsKIAogCWNlLT5nZW1fY29udGV4dCA9IGN0eDsKKwljZS0+
dm0gPSBpOTE1X3ZtX2dldChjdHgtPnZtID86ICZlbmdpbmUtPmd0LT5nZ3R0LT52bSk7CisKIAlj
ZS0+ZW5naW5lID0gZW5naW5lOwogCWNlLT5vcHMgPSBlbmdpbmUtPmNvcHM7CiAJY2UtPnNzZXUg
PSBlbmdpbmUtPnNzZXU7CkBAIC0yMDYsNiArMjA4LDggQEAgaW50ZWxfY29udGV4dF9pbml0KHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAogdm9pZCBpbnRlbF9jb250ZXh0X2Zpbmkoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlKQogeworCWk5MTVfdm1fcHV0KGNlLT52bSk7CisKIAltdXRleF9k
ZXN0cm95KCZjZS0+cGluX211dGV4KTsKIAlpOTE1X2FjdGl2ZV9maW5pKCZjZS0+YWN0aXZlKTsK
IH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaAppbmRl
eCA0YzBlMjExYzcxNWQuLjY4YTdlOTc5YjFhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaApAQCAtMzYsNyArMzYsNiBAQCBzdHJ1Y3QgaW50ZWxf
Y29udGV4dF9vcHMgewogc3RydWN0IGludGVsX2NvbnRleHQgewogCXN0cnVjdCBrcmVmIHJlZjsK
IAotCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpnZW1fY29udGV4dDsKIAlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqaW5mbGlnaHQ7CiAj
ZGVmaW5lIGludGVsX2NvbnRleHRfaW5mbGlnaHQoY2UpIHB0cl9tYXNrX2JpdHMoKGNlKS0+aW5m
bGlnaHQsIDIpCkBAIC00NCw2ICs0Myw5IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0IHsKICNkZWZp
bmUgaW50ZWxfY29udGV4dF9pbmZsaWdodF9pbmMoY2UpIHB0cl9jb3VudF9pbmMoJihjZSktPmlu
ZmxpZ2h0KQogI2RlZmluZSBpbnRlbF9jb250ZXh0X2luZmxpZ2h0X2RlYyhjZSkgcHRyX2NvdW50
X2RlYygmKGNlKS0+aW5mbGlnaHQpCiAKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsK
KwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7CisKIAlzdHJ1Y3QgbGlzdF9o
ZWFkIHNpZ25hbF9saW5rOwogCXN0cnVjdCBsaXN0X2hlYWQgc2lnbmFsczsKIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA4ODRkZmMxY2IwMzMuLjYzMjM0NGMxNjNhOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE2MDYsOCArMTYwNiw2IEBAIF9fZXhl
Y2xpc3RzX2NvbnRleHRfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAl2b2lkICp2YWRk
cjsKIAlpbnQgcmV0OwogCi0JR0VNX0JVR19PTighY2UtPmdlbV9jb250ZXh0LT52bSk7Ci0KIAly
ZXQgPSBleGVjbGlzdHNfY29udGV4dF9kZWZlcnJlZF9hbGxvYyhjZSwgZW5naW5lKTsKIAlpZiAo
cmV0KQogCQlnb3RvIGVycjsKQEAgLTE3MTcsOCArMTcxNSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9l
bWl0X2luaXRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHN0YXRpYyBpbnQg
ZW1pdF9wZHBzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewogCWNvbnN0IHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUgPSBycS0+ZW5naW5lOwotCXN0cnVjdCBpOTE1X3Bw
Z3R0ICogY29uc3QgcHBndHQgPQotCQlpOTE1X3ZtX3RvX3BwZ3R0KHJxLT5nZW1fY29udGV4dC0+
dm0pOworCXN0cnVjdCBpOTE1X3BwZ3R0ICogY29uc3QgcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0
KHJxLT5od19jb250ZXh0LT52bSk7CiAJaW50IGVyciwgaTsKIAl1MzIgKmNzOwogCkBAIC0xNzkx
LDcgKzE3ODgsNyBAQCBzdGF0aWMgaW50IGV4ZWNsaXN0c19yZXF1ZXN0X2FsbG9jKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJICovCiAKIAkvKiBVbmNvbmRpdGlvbmFsbHkgaW52YWxp
ZGF0ZSBHUFUgY2FjaGVzIGFuZCBUTEJzLiAqLwotCWlmIChpOTE1X3ZtX2lzXzRsdmwocmVxdWVz
dC0+Z2VtX2NvbnRleHQtPnZtKSkKKwlpZiAoaTkxNV92bV9pc180bHZsKHJlcXVlc3QtPmh3X2Nv
bnRleHQtPnZtKSkKIAkJcmV0ID0gcmVxdWVzdC0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJlcXVlc3Qs
IEVNSVRfSU5WQUxJREFURSk7CiAJZWxzZQogCQlyZXQgPSBlbWl0X3BkcHMocmVxdWVzdCk7CkBA
IC0yOTQxLDcgKzI5MzgsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUo
dTMyICpyZWdzLAogCQkJCSAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJ
CSAgICAgc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCiB7Ci0Jc3RydWN0IGk5MTVfcHBndHQgKnBw
Z3R0ID0gaTkxNV92bV90b19wcGd0dChjZS0+Z2VtX2NvbnRleHQtPnZtKTsKKwlzdHJ1Y3QgaTkx
NV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KGNlLT52bSk7CiAJYm9vbCByY3MgPSBl
bmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUzsKIAl1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19i
YXNlOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVm
ZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKaW5kZXgg
YjA1NmYyNWM2NmYyLi4zOGVjMTFhZTZlZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nYnVmZmVyLmMKQEAgLTEzOTYsOSArMTM5Niw5IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bV9hbGlhcyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CiAJ
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07CiAKLQl2bSA9IGNlLT5nZW1fY29udGV4dC0+
dm07Ci0JaWYgKCF2bSkKLQkJdm0gPSAmY2UtPmVuZ2luZS0+Z3QtPmdndHQtPmFsaWFzLT52bTsK
Kwl2bSA9IGNlLT52bTsKKwlpZiAoaTkxNV9pc19nZ3R0KHZtKSkKKwkJdm0gPSAmaTkxNV92bV90
b19nZ3R0KHZtKS0+YWxpYXMtPnZtOwogCiAJcmV0dXJuIHZtOwogfQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Z0L3NjaGVkdWxlci5jCmluZGV4IDIxNDRmYjQ2ZDBlMS4uZjY4Nzk4YWIxZTdjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jCkBAIC0xMTU2LDcgKzExNTYsNyBAQCB2b2lkIGlu
dGVsX3ZncHVfY2xlYW5fc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSkKIAogCWlu
dGVsX3ZncHVfc2VsZWN0X3N1Ym1pc3Npb25fb3BzKHZncHUsIEFMTF9FTkdJTkVTLCAwKTsKIAot
CWk5MTVfY29udGV4dF9wcGd0dF9yb290X3Jlc3RvcmUocywgaTkxNV92bV90b19wcGd0dChzLT5z
aGFkb3dbMF0tPmdlbV9jb250ZXh0LT52bSkpOworCWk5MTVfY29udGV4dF9wcGd0dF9yb290X3Jl
c3RvcmUocywgaTkxNV92bV90b19wcGd0dChzLT5zaGFkb3dbMF0tPnZtKSk7CiAJZm9yX2VhY2hf
ZW5naW5lKGVuZ2luZSwgdmdwdS0+Z3Z0LT5kZXZfcHJpdiwgaWQpCiAJCWludGVsX2NvbnRleHRf
dW5waW4ocy0+c2hhZG93W2lkXSk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
