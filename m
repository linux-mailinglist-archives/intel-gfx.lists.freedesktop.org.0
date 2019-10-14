Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E51D5E27
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D7A6E171;
	Mon, 14 Oct 2019 09:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BF46E160
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828688-1500050 
 for multiple; Mon, 14 Oct 2019 10:08:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:49 +0100
Message-Id: <20191014090757.32111-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/selftests: Check that GPR are
 cleared for new contexts
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

V2Ugd2FudCB0aGUgZ2VuZXJhbCBwdXJwb3NlIHJlZ2lzdGVycyB0byBiZSBjbGVhciBpbiBhbGwg
bmV3IGNvbnRleHRzIHNvCnRoYXQgd2UgY2FuIGJlIGNvbmZpZGVudCB0aGF0IG5vIGluZm9ybWF0
aW9uIGlzIGxlYWtlZCBmcm9tIG9uZSB0byB0aGUKbmV4dC4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9scmMuYyB8IDE4NSArKysrKysrKysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTY2IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfbHJjLmMKaW5kZXggMGFhMzZiMWIyMzg5Li4xMjc2ZGEwNTlkYzYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCkBAIC0xOSw2ICsxOSw5IEBACiAjaW5j
bHVkZSAiZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmgiCiAjaW5jbHVkZSAiZ2VtL3NlbGZ0
ZXN0cy9tb2NrX2NvbnRleHQuaCIKIAorI2RlZmluZSBDU19HUFIoZW5naW5lLCBuKSAoKGVuZ2lu
ZSktPm1taW9fYmFzZSArIDB4NjAwICsgKG4pICogNCkKKyNkZWZpbmUgTlVNX0dQUl9EVyAoMTYg
KiAyKSAvKiBlYWNoIEdQUiBpcyAyIGR3b3JkcyAqLworCiBzdGF0aWMgc3RydWN0IGk5MTVfdm1h
ICpjcmVhdGVfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmo7CkBAIC0yMTA3LDE2ICsyMTEwLDE0IEBAIHN0YXRpYyBpbnQgcHJl
c2VydmVkX3ZpcnR1YWxfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJ
CSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoqc2libGluZ3MsCiAJCQkJICAgIHVuc2lnbmVk
IGludCBuc2libGluZykKIHsKLSNkZWZpbmUgQ1NfR1BSKGVuZ2luZSwgbikgKChlbmdpbmUpLT5t
bWlvX2Jhc2UgKyAweDYwMCArIChuKSAqIDQpCi0KIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpsYXN0
ID0gTlVMTDsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4OwogCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICp2ZTsKIAlzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7CiAJc3RydWN0IGlndF9saXZl
X3Rlc3QgdDsKLQljb25zdCBpbnQgbnVtX2dwciA9IDE2ICogMjsgLyogZWFjaCBHUFIgaXMgMiBk
d29yZHMgKi8KIAl1bnNpZ25lZCBpbnQgbjsKIAlpbnQgZXJyID0gMDsKKwl1MzIgKmNzOwogCiAJ
Y3R4ID0ga2VybmVsX2NvbnRleHQoaTkxNSk7CiAJaWYgKCFjdHgpCkBAIC0yMTQyLDEwICsyMTQz
LDkgQEAgc3RhdGljIGludCBwcmVzZXJ2ZWRfdmlydHVhbF9lbmdpbmUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCiAJaWYgKGVycikKIAkJZ290byBvdXRfdW5waW47CiAKLQlmb3IgKG4g
PSAwOyBuIDwgbnVtX2dwcjsgbisrKSB7CisJZm9yIChuID0gMDsgbiA8IE5VTV9HUFJfRFc7IG4r
KykgewogCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBzaWJsaW5nc1tuICUgbnNp
YmxpbmddOwogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKLQkJdTMyICpjczsKIAogCQlycSA9
IGk5MTVfcmVxdWVzdF9jcmVhdGUodmUpOwogCQlpZiAoSVNfRVJSKHJxKSkgewpAQCAtMjE2OSw3
ICsyMTY5LDcgQEAgc3RhdGljIGludCBwcmVzZXJ2ZWRfdmlydHVhbF9lbmdpbmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCSpjcysrID0gMDsKIAogCQkqY3MrKyA9IE1JX0xPQURf
UkVHSVNURVJfSU1NKDEpOwotCQkqY3MrKyA9IENTX0dQUihlbmdpbmUsIChuICsgMSkgJSBudW1f
Z3ByKTsKKwkJKmNzKysgPSBDU19HUFIoZW5naW5lLCAobiArIDEpICUgTlVNX0dQUl9EVyk7CiAJ
CSpjcysrID0gbiArIDE7CiAKIAkJKmNzKysgPSBNSV9OT09QOwpAQCAtMjE4MiwyMSArMjE4Miwy
NiBAQCBzdGF0aWMgaW50IHByZXNlcnZlZF92aXJ0dWFsX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKIAogCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChsYXN0LCAwLCBIWiAvIDUp
IDwgMCkgewogCQllcnIgPSAtRVRJTUU7Ci0JfSBlbHNlIHsKLQkJdTMyICptYXAgPSBpOTE1X2dl
bV9vYmplY3RfcGluX21hcChzY3JhdGNoLT5vYmosIEk5MTVfTUFQX1dCKTsKKwkJZ290byBvdXRf
ZW5kOworCX0KIAotCQlmb3IgKG4gPSAwOyBuIDwgbnVtX2dwcjsgbisrKSB7Ci0JCQlpZiAobWFw
W25dICE9IG4pIHsKLQkJCQlwcl9lcnIoIkluY29ycmVjdCB2YWx1ZVslZF0gZm91bmQgZm9yIEdQ
UlslZF1cbiIsCi0JCQkJICAgICAgIG1hcFtuXSwgbik7Ci0JCQkJZXJyID0gLUVJTlZBTDsKLQkJ
CQlicmVhazsKLQkJCX0KLQkJfQorCWNzID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoc2NyYXRj
aC0+b2JqLCBJOTE1X01BUF9XQik7CisJaWYgKElTX0VSUihjcykpIHsKKwkJZXJyID0gUFRSX0VS
Uihjcyk7CisJCWdvdG8gb3V0X2VuZDsKKwl9CiAKLQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21h
cChzY3JhdGNoLT5vYmopOworCWZvciAobiA9IDA7IG4gPCBOVU1fR1BSX0RXOyBuKyspIHsKKwkJ
aWYgKGNzW25dICE9IG4pIHsKKwkJCXByX2VycigiSW5jb3JyZWN0IHZhbHVlWyVkXSBmb3VuZCBm
b3IgR1BSWyVkXVxuIiwKKwkJCSAgICAgICBjc1tuXSwgbik7CisJCQllcnIgPSAtRUlOVkFMOwor
CQkJYnJlYWs7CisJCX0KIAl9CiAKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHNjcmF0Y2gt
Pm9iaik7CisKIG91dF9lbmQ6CiAJaWYgKGlndF9saXZlX3Rlc3RfZW5kKCZ0KSkKIAkJZXJyID0g
LUVJTzsKQEAgLTIyMTAsOCArMjIxNSw2IEBAIHN0YXRpYyBpbnQgcHJlc2VydmVkX3ZpcnR1YWxf
ZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogb3V0X2Nsb3NlOgogCWtlcm5l
bF9jb250ZXh0X2Nsb3NlKGN0eCk7CiAJcmV0dXJuIGVycjsKLQotI3VuZGVmIENTX0dQUgogfQog
CiBzdGF0aWMgaW50IGxpdmVfdmlydHVhbF9wcmVzZXJ2ZWQodm9pZCAqYXJnKQpAQCAtMjcyNCwx
MSArMjcyNywxNTUgQEAgc3RhdGljIGludCBsaXZlX2xyY19zdGF0ZSh2b2lkICphcmcpCiAJcmV0
dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBncHJfbWFrZV9kaXJ0eShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCit7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJdTMyICpjczsK
KwlpbnQgbjsKKworCXJxID0gaTkxNV9yZXF1ZXN0X2NyZWF0ZShlbmdpbmUtPmtlcm5lbF9jb250
ZXh0KTsKKwlpZiAoSVNfRVJSKHJxKSkKKwkJcmV0dXJuIFBUUl9FUlIocnEpOworCisJY3MgPSBp
bnRlbF9yaW5nX2JlZ2luKHJxLCAyICogTlVNX0dQUl9EVyArIDIpOworCWlmIChJU19FUlIoY3Mp
KSB7CisJCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCQlyZXR1cm4gUFRSX0VSUihjcyk7CisJfQor
CisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShOVU1fR1BSX0RXKTsKKwlmb3IgKG4gPSAw
OyBuIDwgTlVNX0dQUl9EVzsgbisrKSB7CisJCSpjcysrID0gQ1NfR1BSKGVuZ2luZSwgbik7CisJ
CSpjcysrID0gU1RBQ0tfTUFHSUM7CisJfQorCSpjcysrID0gTUlfTk9PUDsKKworCWludGVsX3Jp
bmdfYWR2YW5jZShycSwgY3MpOworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCisJcmV0dXJuIDA7
Cit9CisKK3N0YXRpYyBpbnQgX19saXZlX2dwcl9jbGVhcihzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqZml4bWUsCisJCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAg
IHN0cnVjdCBpOTE1X3ZtYSAqc2NyYXRjaCkKK3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7
CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJdTMyICpjczsKKwlpbnQgZXJyOworCWludCBu
OworCisJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgOSAmJiBlbmdpbmUtPmNsYXNzICE9
IFJFTkRFUl9DTEFTUykKKwkJcmV0dXJuIDA7IC8qIEdQUiBvbmx5IG9uIHJjczAgZm9yIGdlbjgg
Ki8KKworCWVyciA9IGdwcl9tYWtlX2RpcnR5KGVuZ2luZSk7CisJaWYgKGVycikKKwkJcmV0dXJu
IGVycjsKKworCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZml4bWUsIGVuZ2luZSk7CisJaWYg
KElTX0VSUihjZSkpCisJCXJldHVybiBQVFJfRVJSKGNlKTsKKworCXJxID0gaW50ZWxfY29udGV4
dF9jcmVhdGVfcmVxdWVzdChjZSk7CisJaWYgKElTX0VSUihycSkpIHsKKwkJZXJyID0gUFRSX0VS
UihycSk7CisJCWdvdG8gZXJyX3B1dDsKKwl9CisKKwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEs
IDQgKiBOVU1fR1BSX0RXKTsKKwlpZiAoSVNfRVJSKGNzKSkgeworCQllcnIgPSBQVFJfRVJSKGNz
KTsKKwkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisJCWdvdG8gZXJyX3B1dDsKKwl9CisKKwlmb3Ig
KG4gPSAwOyBuIDwgTlVNX0dQUl9EVzsgbisrKSB7CisJCSpjcysrID0gTUlfU1RPUkVfUkVHSVNU
RVJfTUVNX0dFTjggfCBNSV9VU0VfR0dUVDsKKwkJKmNzKysgPSBDU19HUFIoZW5naW5lLCBuKTsK
KwkJKmNzKysgPSBpOTE1X2dndHRfb2Zmc2V0KHNjcmF0Y2gpICsgbiAqIHNpemVvZih1MzIpOwor
CQkqY3MrKyA9IDA7CisJfQorCisJaTkxNV9yZXF1ZXN0X2dldChycSk7CisJaTkxNV9yZXF1ZXN0
X2FkZChycSk7CisKKwlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAsIEhaIC8gNSkgPCAwKSB7
CisJCWVyciA9IC1FVElNRTsKKwkJZ290byBlcnJfcnE7CisJfQorCisJY3MgPSBpOTE1X2dlbV9v
YmplY3RfcGluX21hcChzY3JhdGNoLT5vYmosIEk5MTVfTUFQX1dCKTsKKwlpZiAoSVNfRVJSKGNz
KSkgeworCQllcnIgPSBQVFJfRVJSKGNzKTsKKwkJZ290byBlcnJfcnE7CisJfQorCisJZm9yIChu
ID0gMDsgbiA8IE5VTV9HUFJfRFc7IG4rKykgeworCQlpZiAoY3Nbbl0pIHsKKwkJCXByX2Vycigi
JXM6IEdQUlslZF0uJXMgd2FzIG5vdCB6ZXJvLCBmb3VuZCAweCUwOHghXG4iLAorCQkJICAgICAg
IGVuZ2luZS0+bmFtZSwKKwkJCSAgICAgICBuIC8gMiwgbiAmIDEgPyAidWR3IiA6ICJsZHciLAor
CQkJICAgICAgIGNzW25dKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlicmVhazsKKwkJfQorCX0K
KworCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc2NyYXRjaC0+b2JqKTsKKworZXJyX3JxOgor
CWk5MTVfcmVxdWVzdF9wdXQocnEpOworZXJyX3B1dDoKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7
CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBsaXZlX2dwcl9jbGVhcih2b2lkICphcmcp
Cit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmU7CisJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmZpeG1lOworCXN0cnVjdCBpOTE1
X3ZtYSAqc2NyYXRjaDsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwlpbnQgZXJyID0gMDsK
KworCS8qCisJICogQ2hlY2sgdGhhdCBHUFIgcmVnaXN0ZXJzIGFyZSBjbGVhcmVkIGluIG5ldyBj
b250ZXh0cyBhcyB3ZSBuZWVkCisJICogdG8gYXZvaWQgbGVha2luZyBhbnkgaW5mb3JtYXRpb24g
ZnJvbSBwcmV2aW91cyBjb250ZXh0cy4KKwkgKi8KKworCWZpeG1lID0ga2VybmVsX2NvbnRleHQo
Z3QtPmk5MTUpOworCWlmICghZml4bWUpCisJCXJldHVybiAtRU5PTUVNOworCisJc2NyYXRjaCA9
IGNyZWF0ZV9zY3JhdGNoKGd0KTsKKwlpZiAoSVNfRVJSKHNjcmF0Y2gpKSB7CisJCWVyciA9IFBU
Ul9FUlIoc2NyYXRjaCk7CisJCWdvdG8gb3V0X2Nsb3NlOworCX0KKworCWZvcl9lYWNoX2VuZ2lu
ZShlbmdpbmUsIGd0LT5pOTE1LCBpZCkgeworCQllcnIgPSBfX2xpdmVfZ3ByX2NsZWFyKGZpeG1l
LCBlbmdpbmUsIHNjcmF0Y2gpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisJfQorCisJaWYgKGln
dF9mbHVzaF90ZXN0KGd0LT5pOTE1KSkKKwkJZXJyID0gLUVJTzsKKworCWk5MTVfdm1hX3VucGlu
X2FuZF9yZWxlYXNlKCZzY3JhdGNoLCAwKTsKK291dF9jbG9zZToKKwlrZXJuZWxfY29udGV4dF9j
bG9zZShmaXhtZSk7CisJcmV0dXJuIGVycjsKK30KKwogaW50IGludGVsX2xyY19saXZlX3NlbGZ0
ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdGF0aWMgY29uc3Qgc3Ry
dWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewogCQlTVUJURVNUKGxpdmVfbHJjX2xheW91dCks
CiAJCVNVQlRFU1QobGl2ZV9scmNfc3RhdGUpLAorCQlTVUJURVNUKGxpdmVfZ3ByX2NsZWFyKSwK
IAl9OwogCiAJaWYgKCFIQVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTKGk5MTUpKQotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
