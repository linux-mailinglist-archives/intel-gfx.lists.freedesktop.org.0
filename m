Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F13E2D13
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 11:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC8F6E1BB;
	Thu, 24 Oct 2019 09:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F016E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 09:20:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18946543-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:19:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:19:51 +0100
Message-Id: <20191024091954.18451-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024091954.18451-1-chris@chris-wilson.co.uk>
References: <20191024091954.18451-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/7] drm/i915/selftests: add write-dword test for
 LMEM
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

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKU2ltcGxlIHRlc3Qg
d3JpdGluZyB0byBkd29yZHMgYWNyb3NzIGFuIG9iamVjdCwgdXNpbmcgdmFyaW91cyBlbmdpbmVz
IGluCmEgcmFuZG9taXplZCBvcmRlciwgY2hlY2tpbmcgdGhhdCBvdXIgd3JpdGVzIGxhbmQgZnJv
bSB0aGUgY3B1LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgIHwg
MTY2ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9y
eV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlf
cmVnaW9uLmMKaW5kZXggMjkyNDg5MzcxODQyLi44ZTE0ZWYzZTFlMzIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAt
MTEsOSArMTEsMTEgQEAKICNpbmNsdWRlICJtb2NrX2dlbV9kZXZpY2UuaCIKICNpbmNsdWRlICJt
b2NrX3JlZ2lvbi5oIgogCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNs
dWRlICJnZW0vaTkxNV9nZW1fbG1lbS5oIgogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24u
aCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5oIgorI2luY2x1ZGUgImdlbS9z
ZWxmdGVzdHMvaWd0X2dlbV91dGlscy5oIgogI2luY2x1ZGUgImdlbS9zZWxmdGVzdHMvbW9ja19j
b250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJzZWxmdGVzdHMv
aWd0X2ZsdXNoX3Rlc3QuaCIKQEAgLTI1Niw2ICsyNTgsMTI1IEBAIHN0YXRpYyBpbnQgaWd0X21v
Y2tfY29udGlndW91cyh2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBp
Z3RfZ3B1X3dyaXRlX2R3KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgICBzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSwKKwkJCSAgICB1MzIgZHdvcmQsCisJCQkgICAgdTMyIHZhbHVlKQorewor
CXJldHVybiBpZ3RfZ3B1X2ZpbGxfZHcoY2UsIHZtYSwgZHdvcmQgKiBzaXplb2YodTMyKSwKKwkJ
CSAgICAgICB2bWEtPnNpemUgPj4gUEFHRV9TSElGVCwgdmFsdWUpOworfQorCitzdGF0aWMgaW50
IGlndF9jcHVfY2hlY2soc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgdTMyIGR3b3Jk
LCB1MzIgdmFsKQoreworCXVuc2lnbmVkIGxvbmcgbjsKKwlpbnQgZXJyOworCisJaTkxNV9nZW1f
b2JqZWN0X2xvY2sob2JqKTsKKwllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3djX2RvbWFp
bihvYmosIGZhbHNlKTsKKwlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJaWYgKGVycikK
KwkJcmV0dXJuIGVycjsKKworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsK
KwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJZm9yIChuID0gMDsgbiA8IG9iai0+YmFzZS5z
aXplID4+IFBBR0VfU0hJRlQ7ICsrbikgeworCQl1MzIgX19pb21lbSAqYmFzZTsKKwkJdTMyIHJl
YWRfdmFsOworCisJCWJhc2UgPSBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZV9hdG9t
aWMob2JqLCBuKTsKKworCQlyZWFkX3ZhbCA9IGlvcmVhZDMyKGJhc2UgKyBkd29yZCk7CisJCWlv
X21hcHBpbmdfdW5tYXBfYXRvbWljKGJhc2UpOworCQlpZiAocmVhZF92YWwgIT0gdmFsKSB7CisJ
CQlwcl9lcnIoIm49JWx1IGJhc2VbJXVdPSV1LCB2YWw9JXVcbiIsCisJCQkgICAgICAgbiwgZHdv
cmQsIHJlYWRfdmFsLCB2YWwpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWJyZWFrOworCQl9CisJ
fQorCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CisJcmV0dXJuIGVycjsKK30K
Kworc3RhdGljIGludCBpZ3RfZ3B1X3dyaXRlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgs
CisJCQkgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKK3sKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSA9IGN0eC0+dm0gPzogJmk5MTUtPmdndHQudm07CisJc3RydWN0IGk5MTVfZ2VtX2VuZ2lu
ZXMgKmVuZ2luZXM7CisJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKKwlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2U7CisJSTkxNV9STkRfU1RBVEUocHJuZyk7CisJSUdUX1RJTUVPVVQo
ZW5kX3RpbWUpOworCXVuc2lnbmVkIGludCBjb3VudDsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsK
KwlpbnQgKm9yZGVyOworCWludCBpLCBuOworCWludCBlcnIgPSAwOworCisJR0VNX0JVR19PTigh
aTkxNV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSk7CisKKwluID0gMDsKKwljb3Vu
dCA9IDA7CisJZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgaTkxNV9nZW1fY29udGV4dF9sb2NrX2Vu
Z2luZXMoY3R4KSwgaXQpIHsKKwkJY291bnQrKzsKKwkJaWYgKCFpbnRlbF9lbmdpbmVfY2FuX3N0
b3JlX2R3b3JkKGNlLT5lbmdpbmUpKQorCQkJY29udGludWU7CisKKwkJbisrOworCX0KKwlpOTE1
X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CisJaWYgKCFuKQorCQlyZXR1cm4gMDsK
KworCW9yZGVyID0gaTkxNV9yYW5kb21fb3JkZXIoY291bnQgKiBjb3VudCwgJnBybmcpOworCWlm
ICghb3JkZXIpCisJCXJldHVybiAtRU5PTUVNOworCisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uo
b2JqLCB2bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCWVyciA9IFBUUl9FUlIodm1h
KTsKKwkJZ290byBvdXRfZnJlZTsKKwl9CisKKwllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAw
LCBQSU5fVVNFUik7CisJaWYgKGVycikKKwkJZ290byBvdXRfZnJlZTsKKworCWkgPSAwOworCWVu
Z2luZXMgPSBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpOworCWRvIHsKKwkJdTMy
IHJuZyA9IHByYW5kb21fdTMyX3N0YXRlKCZwcm5nKTsKKwkJdTMyIGR3b3JkID0gb2Zmc2V0X2lu
X3BhZ2Uocm5nKSAvIDQ7CisKKwkJY2UgPSBlbmdpbmVzLT5lbmdpbmVzW29yZGVyW2ldICUgZW5n
aW5lcy0+bnVtX2VuZ2luZXNdOworCQlpID0gKGkgKyAxKSAlIChjb3VudCAqIGNvdW50KTsKKwkJ
aWYgKCFjZSB8fCAhaW50ZWxfZW5naW5lX2Nhbl9zdG9yZV9kd29yZChjZS0+ZW5naW5lKSkKKwkJ
CWNvbnRpbnVlOworCisJCWVyciA9IGlndF9ncHVfd3JpdGVfZHcoY2UsIHZtYSwgZHdvcmQsIHJu
Zyk7CisJCWlmIChlcnIpCisJCQlicmVhazsKKworCQllcnIgPSBpZ3RfY3B1X2NoZWNrKG9iaiwg
ZHdvcmQsIHJuZyk7CisJCWlmIChlcnIpCisJCQlicmVhazsKKwl9IHdoaWxlICghX19pZ3RfdGlt
ZW91dChlbmRfdGltZSwgTlVMTCkpOworCWk5MTVfZ2VtX2NvbnRleHRfdW5sb2NrX2VuZ2luZXMo
Y3R4KTsKKworb3V0X2ZyZWU6CisJa2ZyZWUob3JkZXIpOworCisJaWYgKGVyciA9PSAtRU5PTUVN
KQorCQllcnIgPSAwOworCisJcmV0dXJuIGVycjsKK30KKwogc3RhdGljIGludCBpZ3RfbG1lbV9j
cmVhdGUodm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJn
OwpAQCAtMjc3LDYgKzM5OCw1MCBAQCBzdGF0aWMgaW50IGlndF9sbWVtX2NyZWF0ZSh2b2lkICph
cmcpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9ncHUodm9p
ZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eDsKKwlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7CisJSTkxNV9STkRfU1RBVEUocHJuZyk7CisJdTMy
IHN6OworCWludCBlcnI7CisKKwlmaWxlID0gbW9ja19maWxlKGk5MTUpOworCWlmIChJU19FUlIo
ZmlsZSkpCisJCXJldHVybiBQVFJfRVJSKGZpbGUpOworCisJY3R4ID0gbGl2ZV9jb250ZXh0KGk5
MTUsIGZpbGUpOworCWlmIChJU19FUlIoY3R4KSkgeworCQllcnIgPSBQVFJfRVJSKGN0eCk7CisJ
CWdvdG8gb3V0X2ZpbGU7CisJfQorCisJc3ogPSByb3VuZF91cChwcmFuZG9tX3UzMl9zdGF0ZSgm
cHJuZykgJSBTWl8zMk0sIFBBR0VfU0laRSk7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX2xtZW0oaTkxNSwgc3osIDApOworCWlmIChJU19FUlIob2JqKSkgeworCQllcnIgPSBQVFJf
RVJSKG9iaik7CisJCWdvdG8gb3V0X2ZpbGU7CisJfQorCisJZXJyID0gaTkxNV9nZW1fb2JqZWN0
X3Bpbl9wYWdlcyhvYmopOworCWlmIChlcnIpCisJCWdvdG8gb3V0X3B1dDsKKworCWVyciA9IGln
dF9ncHVfd3JpdGUoY3R4LCBvYmopOworCWlmIChlcnIpCisJCXByX2VycigiaWd0X2dwdV93cml0
ZSBmYWlsZWQoJWQpXG4iLCBlcnIpOworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9i
aik7CitvdXRfcHV0OgorCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKK291dF9maWxlOgorCW1v
Y2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCXJldHVybiBlcnI7Cit9CisKIHN0YXRpYyBpbnQg
aWd0X2xtZW1fd3JpdGVfY3B1KHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGFyZzsKQEAgLTQyMSw2ICs1ODYsNyBAQCBpbnQgaW50ZWxfbWVtb3J5X3JlZ2lv
bl9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlzdGF0aWMg
Y29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewogCQlTVUJURVNUKGlndF9sbWVt
X2NyZWF0ZSksCiAJCVNVQlRFU1QoaWd0X2xtZW1fd3JpdGVfY3B1KSwKKwkJU1VCVEVTVChpZ3Rf
bG1lbV93cml0ZV9ncHUpLAogCX07CiAKIAlpZiAoIUhBU19MTUVNKGk5MTUpKSB7Ci0tIAoyLjI0
LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
