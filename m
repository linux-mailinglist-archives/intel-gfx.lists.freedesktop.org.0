Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D563E2D12
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 11:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3E56E1BC;
	Thu, 24 Oct 2019 09:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA406E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 09:20:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18946545-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:19:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:19:53 +0100
Message-Id: <20191024091954.18451-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024091954.18451-1-chris@chris-wilson.co.uk>
References: <20191024091954.18451-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/7] drm/i915/selftests: prefer random sizes for
 the huge-GTT-page smoke tests
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

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKRGl0Y2ggdGhlIGR1
YmlvdXMgc3RhdGljIGxpc3Qgb2Ygc2l6ZXMgdG8gZW51bWVyYXRlLCBpbiBmYXZvdXIgb2YKY2hv
b3NpbmcgYSByYW5kb20gc2l6ZSB3aXRoaW4gdGhlIGxpbWl0cyBvZiBlYWNoIGJhY2tpbmcgc3Rv
cmUuIFdpdGgKcmVwZWF0ZWQgQ0kgcnVucyB0aGlzIHNob3VsZCBnaXZlIHVzIGEgd2lkZXIgcmFu
Z2Ugb2Ygb2JqZWN0IHNpemVzLCBhbmQKaW4gdHVybiBtb3JlIHBhZ2Utc2l6ZSBjb21iaW5hdGlv
bnMsIHdoaWxlIHVzaW5nIGxlc3MgbWFjaGluZSB0aW1lLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2h1Z2VfcGFnZXMuYyAgIHwgMjI4ICsrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDgwIGluc2VydGlvbnMoKyksIDE0OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCmluZGV4IDY4N2U5YWM5YjU4
YS4uYjE3NmQ3MTliZGVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2h1Z2VfcGFnZXMuYwpAQCAtMTMxNiwyMDMgKzEzMTYsMTM3IEBAIHN0YXRpYyBpbnQgaWd0
X3BwZ3R0X2V4aGF1c3RfaHVnZSh2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGlj
IGludCBpZ3RfcHBndHRfaW50ZXJuYWxfaHVnZSh2b2lkICphcmcpCi17Ci0Jc3RydWN0IGk5MTVf
Z2VtX2NvbnRleHQgKmN0eCA9IGFyZzsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGN0eC0+aTkxNTsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0YXRpYyBj
b25zdCB1bnNpZ25lZCBpbnQgc2l6ZXNbXSA9IHsKLQkJU1pfNjRLLAotCQlTWl8xMjhLLAotCQlT
Wl8yNTZLLAotCQlTWl81MTJLLAotCQlTWl8xTSwKLQkJU1pfMk0sCi0JfTsKLQlpbnQgaTsKLQlp
bnQgZXJyOwotCi0JLyoKLQkgKiBTYW5pdHkgY2hlY2sgdGhhdCB0aGUgSFcgdXNlcyBodWdlIHBh
Z2VzIGNvcnJlY3RseSB0aHJvdWdoIGludGVybmFsCi0JICogLS0gZW5zdXJlIHRoYXQgb3VyIHdy
aXRlcyBsYW5kIGluIHRoZSByaWdodCBwbGFjZS4KLQkgKi8KLQotCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKHNpemVzKTsgKytpKSB7Ci0JCXVuc2lnbmVkIGludCBzaXplID0gc2l6ZXNbaV07
Ci0KLQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsK
LQkJaWYgKElTX0VSUihvYmopKQotCQkJcmV0dXJuIFBUUl9FUlIob2JqKTsKLQotCQllcnIgPSBp
OTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Ci0JCWlmIChlcnIpCi0JCQlnb3RvIG91dF9w
dXQ7Ci0KLQkJaWYgKG9iai0+bW0ucGFnZV9zaXplcy5waHlzIDwgSTkxNV9HVFRfUEFHRV9TSVpF
XzY0SykgewotCQkJcHJfaW5mbygiaW50ZXJuYWwgdW5hYmxlIHRvIGFsbG9jYXRlIGh1Z2UtcGFn
ZShzKSB3aXRoIHNpemU9JXVcbiIsCi0JCQkJc2l6ZSk7Ci0JCQlnb3RvIG91dF91bnBpbjsKLQkJ
fQotCi0JCWVyciA9IGlndF93cml0ZV9odWdlKGN0eCwgb2JqKTsKLQkJaWYgKGVycikgewotCQkJ
cHJfZXJyKCJpbnRlcm5hbCB3cml0ZS1odWdlIGZhaWxlZCB3aXRoIHNpemU9JXVcbiIsCi0JCQkg
ICAgICAgc2l6ZSk7Ci0JCQlnb3RvIG91dF91bnBpbjsKLQkJfQotCi0JCWk5MTVfZ2VtX29iamVj
dF91bnBpbl9wYWdlcyhvYmopOwotCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqLCBJ
OTE1X01NX05PUk1BTCk7Ci0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKLQl9Ci0KLQlyZXR1
cm4gMDsKLQotb3V0X3VucGluOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwot
b3V0X3B1dDoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0KLQlyZXR1cm4gZXJyOwotfQor
dHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCisoKmlndF9jcmVhdGVfZm4pKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgc2l6ZSwgdTMyIGZsYWdzKTsKIAogc3Rh
dGljIGlubGluZSBib29sIGlndF9jYW5fYWxsb2NhdGVfdGhwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogewogCXJldHVybiBpOTE1LT5tbS5nZW1mcyAmJiBoYXNfdHJhbnNwYXJlbnRf
aHVnZXBhZ2UoKTsKIH0KIAotc3RhdGljIGludCBpZ3RfcHBndHRfZ2VtZnNfaHVnZSh2b2lkICph
cmcpCitzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgoraWd0X2NyZWF0ZV9zaG1l
bShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIHNpemUsIHUzMiBmbGFncykKIHsK
LQlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4ID0gYXJnOwotCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gY3R4LT5pOTE1OwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7Ci0Jc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBzaXplc1tdID0gewotCQlTWl8yTSwKLQkJ
U1pfNE0sCi0JCVNaXzhNLAotCQlTWl8xNk0sCi0JCVNaXzMyTSwKLQl9OwotCWludCBpOwotCWlu
dCBlcnI7Ci0KLQkvKgotCSAqIFNhbml0eSBjaGVjayB0aGF0IHRoZSBIVyB1c2VzIGh1Z2UgcGFn
ZXMgY29ycmVjdGx5IHRocm91Z2ggZ2VtZnMgLS0KLQkgKiBlbnN1cmUgdGhhdCBvdXIgd3JpdGVz
IGxhbmQgaW4gdGhlIHJpZ2h0IHBsYWNlLgotCSAqLwotCiAJaWYgKCFpZ3RfY2FuX2FsbG9jYXRl
X3RocChpOTE1KSkgewotCQlwcl9pbmZvKCJtaXNzaW5nIFRIUCBzdXBwb3J0LCBza2lwcGluZ1xu
Iik7Ci0JCXJldHVybiAwOworCQlwcl9pbmZvKCIlcyBtaXNzaW5nIFRIUCBzdXBwb3J0LCBza2lw
cGluZ1xuIiwgX19mdW5jX18pOworCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKIAl9CiAKLQlm
b3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShzaXplcyk7ICsraSkgewotCQl1bnNpZ25lZCBpbnQg
c2l6ZSA9IHNpemVzW2ldOwotCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0o
aTkxNSwgc2l6ZSk7Ci0JCWlmIChJU19FUlIob2JqKSkKLQkJCXJldHVybiBQVFJfRVJSKG9iaik7
Ci0KLQkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwotCQlpZiAoZXJyKQot
CQkJZ290byBvdXRfcHV0OworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGk5
MTUsIHNpemUpOworfQogCi0JCWlmIChvYmotPm1tLnBhZ2Vfc2l6ZXMucGh5cyA8IEk5MTVfR1RU
X1BBR0VfU0laRV8yTSkgewotCQkJcHJfaW5mbygiZmluaXNoaW5nIHRlc3QgZWFybHksIGdlbWZz
IHVuYWJsZSB0byBhbGxvY2F0ZSBodWdlLXBhZ2Uocykgd2l0aCBzaXplPSV1XG4iLAotCQkJCXNp
emUpOwotCQkJZ290byBvdXRfdW5waW47Ci0JCX0KK3N0YXRpYyBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqCitpZ3RfY3JlYXRlX2ludGVybmFsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCB1MzIgc2l6ZSwgdTMyIGZsYWdzKQoreworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX2ludGVybmFsKGk5MTUsIHNpemUpOworfQogCi0JCWVyciA9IGlndF93cml0ZV9odWdlKGN0
eCwgb2JqKTsKLQkJaWYgKGVycikgewotCQkJcHJfZXJyKCJnZW1mcyB3cml0ZS1odWdlIGZhaWxl
ZCB3aXRoIHNpemU9JXVcbiIsCi0JCQkgICAgICAgc2l6ZSk7Ci0JCQlnb3RvIG91dF91bnBpbjsK
LQkJfQorc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKK2lndF9jcmVhdGVfbG9j
YWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBzaXplLCB1MzIgZmxhZ3MpCit7
CisJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBzaXplLCBmbGFncyk7
Cit9CiAKLQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Ci0JCV9faTkxNV9nZW1f
b2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5MTVfTU1fTk9STUFMKTsKLQkJaTkxNV9nZW1fb2JqZWN0
X3B1dChvYmopOwotCX0KK3N0YXRpYyB1MzIgaWd0X3JhbmRvbV9zaXplKHN0cnVjdCBybmRfc3Rh
dGUgKnBybmcsCisJCQkgICB1MzIgbWluX3BhZ2Vfc2l6ZSwKKwkJCSAgIHUzMiBtYXhfcGFnZV9z
aXplKQoreworCXU2NCBtYXNrOworCXUzMiBzaXplOwogCi0JcmV0dXJuIDA7CisJR0VNX0JVR19P
TighaXNfcG93ZXJfb2ZfMihtaW5fcGFnZV9zaXplKSk7CisJR0VNX0JVR19PTighaXNfcG93ZXJf
b2ZfMihtYXhfcGFnZV9zaXplKSk7CisJR0VNX0JVR19PTihtaW5fcGFnZV9zaXplIDwgUEFHRV9T
SVpFKTsKKwlHRU1fQlVHX09OKG1pbl9wYWdlX3NpemUgPiBtYXhfcGFnZV9zaXplKTsKIAotb3V0
X3VucGluOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwotb3V0X3B1dDoKLQlp
OTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJbWFzayA9ICgobWF4X3BhZ2Vfc2l6ZSA8PCAxVUxM
KSAtIDEpICYgUEFHRV9NQVNLOworCXNpemUgPSBwcmFuZG9tX3UzMl9zdGF0ZShwcm5nKSAmIG1h
c2s7CisJaWYgKHNpemUgPCBtaW5fcGFnZV9zaXplKQorCQlzaXplIHw9IG1pbl9wYWdlX3NpemU7
CiAKLQlyZXR1cm4gZXJyOworCXJldHVybiBzaXplOwogfQogCi1zdGF0aWMgaW50IGlndF9wcGd0
dF9sbWVtX2h1Z2Uodm9pZCAqYXJnKQorc3RhdGljIGludCBpZ3RfcHBndHRfc21va2VfaHVnZSh2
b2lkICphcmcpCiB7CiAJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGFyZzsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsKIAlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOwotCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgc2l6ZXNbXSA9IHsK
LQkJU1pfNjRLLAotCQlTWl81MTJLLAotCQlTWl8xTSwKLQkJU1pfMk0sCisJSTkxNV9STkRfU1RB
VEUocHJuZyk7CisJc3RydWN0IHsKKwkJaWd0X2NyZWF0ZV9mbiBmbjsKKwkJdTMyIG1pbjsKKwkJ
dTMyIG1heDsKKwl9IGJhY2tlbmRzW10gPSB7CisJCXsgaWd0X2NyZWF0ZV9pbnRlcm5hbCwgU1pf
NjRLLCBTWl8yTSwgIH0sCisJCXsgaWd0X2NyZWF0ZV9zaG1lbSwgICAgU1pfNjRLLCBTWl8zMk0s
IH0sCisJCXsgaWd0X2NyZWF0ZV9sb2NhbCwgICAgU1pfNjRLLCBTWl8xRywgIH0sCiAJfTsKLQlp
bnQgaTsKIAlpbnQgZXJyOwotCi0JaWYgKCFIQVNfTE1FTShpOTE1KSkgewotCQlwcl9pbmZvKCJk
ZXZpY2UgbGFja3MgTE1FTSBzdXBwb3J0LCBza2lwcGluZ1xuIik7Ci0JCXJldHVybiAwOwotCX0K
KwlpbnQgaTsKIAogCS8qCi0JICogU2FuaXR5IGNoZWNrIHRoYXQgdGhlIEhXIHVzZXMgaHVnZSBw
YWdlcyBjb3JyZWN0bHkgdGhyb3VnaCBMTUVNCi0JICogLS0gZW5zdXJlIHRoYXQgb3VyIHdyaXRl
cyBsYW5kIGluIHRoZSByaWdodCBwbGFjZS4KKwkgKiBTYW5pdHkgY2hlY2sgdGhhdCB0aGUgSFcg
dXNlcyBodWdlIHBhZ2VzIGNvcnJlY3RseSB0aHJvdWdoIG91cgorCSAqIHZhcmlvdXMgYmFja2Vu
ZHMgLS0gZW5zdXJlIHRoYXQgb3VyIHdyaXRlcyBsYW5kIGluIHRoZSByaWdodCBwbGFjZS4KIAkg
Ki8KIAotCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHNpemVzKTsgKytpKSB7Ci0JCXVuc2ln
bmVkIGludCBzaXplID0gc2l6ZXNbaV07CisJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoYmFj
a2VuZHMpOyArK2kpIHsKKwkJdTMyIG1pbiA9IGJhY2tlbmRzW2ldLm1pbjsKKwkJdTMyIG1heCA9
IGJhY2tlbmRzW2ldLm1heDsKKwkJdTMyIHNpemUgPSBtYXg7Cit0cnlfYWdhaW46CisJCXNpemUg
PSBpZ3RfcmFuZG9tX3NpemUoJnBybmcsIG1pbiwgcm91bmRkb3duX3Bvd19vZl90d28oc2l6ZSkp
OwogCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBzaXplLCBJOTE1
X0JPX0FMTE9DX0NPTlRJR1VPVVMpOworCQlvYmogPSBiYWNrZW5kc1tpXS5mbihpOTE1LCBzaXpl
LCAwKTsKIAkJaWYgKElTX0VSUihvYmopKSB7CiAJCQllcnIgPSBQVFJfRVJSKG9iaik7CiAJCQlp
ZiAoZXJyID09IC1FMkJJRykgewotCQkJCXByX2luZm8oIm9iamVjdCB0b28gYmlnIGZvciByZWdp
b24hXG4iKTsKLQkJCQlyZXR1cm4gMDsKKwkJCQlzaXplID4+PSAxOworCQkJCWdvdG8gdHJ5X2Fn
YWluOworCQkJfSBlbHNlIGlmIChlcnIgPT0gLUVOT0RFVikgeworCQkJCWVyciA9IDA7CisJCQkJ
Y29udGludWU7CiAJCQl9CiAKIAkJCXJldHVybiBlcnI7CiAJCX0KIAogCQllcnIgPSBpOTE1X2dl
bV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Ci0JCWlmIChlcnIpCisJCWlmIChlcnIpIHsKKwkJCWlm
IChlcnIgPT0gLUVOWElPKSB7CisJCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCQkJCXNp
emUgPj49IDE7CisJCQkJZ290byB0cnlfYWdhaW47CisJCQl9CiAJCQlnb3RvIG91dF9wdXQ7CisJ
CX0KIAotCQlpZiAob2JqLT5tbS5wYWdlX3NpemVzLnBoeXMgPCBJOTE1X0dUVF9QQUdFX1NJWkVf
NjRLKSB7Ci0JCQlwcl9pbmZvKCJMTUVNIHVuYWJsZSB0byBhbGxvY2F0ZSBodWdlLXBhZ2Uocykg
d2l0aCBzaXplPSV1XG4iLAotCQkJCXNpemUpOworCQlpZiAob2JqLT5tbS5wYWdlX3NpemVzLnBo
eXMgPCBtaW4pIHsKKwkJCXByX2luZm8oIiVzIHVuYWJsZSB0byBhbGxvY2F0ZSBodWdlLXBhZ2Uo
cykgd2l0aCBzaXplPSV1LCBpPSVkXG4iLAorCQkJCV9fZnVuY19fLCBzaXplLCBpKTsKKwkJCWVy
ciA9IC1FTk9NRU07CiAJCQlnb3RvIG91dF91bnBpbjsKIAkJfQogCiAJCWVyciA9IGlndF93cml0
ZV9odWdlKGN0eCwgb2JqKTsKIAkJaWYgKGVycikgewotCQkJcHJfZXJyKCJMTUVNIHdyaXRlLWh1
Z2UgZmFpbGVkIHdpdGggc2l6ZT0ldVxuIiwgc2l6ZSk7Ci0JCQlnb3RvIG91dF91bnBpbjsKKwkJ
CXByX2VycigiJXMgd3JpdGUtaHVnZSBmYWlsZWQgd2l0aCBzaXplPSV1LCBpPSVkXG4iLAorCQkJ
ICAgICAgIF9fZnVuY19fLCBzaXplLCBpKTsKIAkJfQotCitvdXRfdW5waW46CiAJCWk5MTVfZ2Vt
X29iamVjdF91bnBpbl9wYWdlcyhvYmopOwogCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMo
b2JqLCBJOTE1X01NX05PUk1BTCk7CitvdXRfcHV0OgogCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7Ci0JfQogCi0JcmV0dXJuIDA7CisJCWlmIChlcnIgPT0gLUVOT01FTSB8fCBlcnIgPT0gLUVO
WElPKQorCQkJZXJyID0gMDsKIAotb3V0X3VucGluOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9w
YWdlcyhvYmopOwotb3V0X3B1dDoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJCWlmIChl
cnIpCisJCQlicmVhazsKIAotCWlmIChlcnIgPT0gLUVOT01FTSkKLQkJZXJyID0gMDsKKwkJY29u
ZF9yZXNjaGVkKCk7CisJfQogCiAJcmV0dXJuIGVycjsKIH0KQEAgLTE4NzYsOSArMTgxMCw3IEBA
IGludCBpOTE1X2dlbV9odWdlX3BhZ2VfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAJCVNVQlRFU1QoaWd0X3BwZ3R0X3Bpbl91cGRhdGUpLAogCQlTVUJURVNU
KGlndF90bXBmc19mYWxsYmFjayksCiAJCVNVQlRFU1QoaWd0X3BwZ3R0X2V4aGF1c3RfaHVnZSks
Ci0JCVNVQlRFU1QoaWd0X3BwZ3R0X2dlbWZzX2h1Z2UpLAotCQlTVUJURVNUKGlndF9wcGd0dF9p
bnRlcm5hbF9odWdlKSwKLQkJU1VCVEVTVChpZ3RfcHBndHRfbG1lbV9odWdlKSwKKwkJU1VCVEVT
VChpZ3RfcHBndHRfc21va2VfaHVnZSksCiAJfTsKIAlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7CiAJ
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
