Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E13DF5F9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 21:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB59A6E233;
	Mon, 21 Oct 2019 19:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF05F6E231
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 19:27:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 12:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,324,1566889200"; d="scan'208";a="227432339"
Received: from cmclare-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.98])
 by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2019 12:27:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 20:27:46 +0100
Message-Id: <20191021192747.24804-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021192747.24804-1-matthew.auld@intel.com>
References: <20191021192747.24804-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/selftests: prefer random sizes
 for the huge-GTT-page smoke tests
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

RGl0Y2ggdGhlIGR1YmlvdXMgc3RhdGljIGxpc3Qgb2Ygc2l6ZXMgdG8gZW51bWVyYXRlLCBpbiBm
YXZvdXIgb2YKY2hvb3NpbmcgYSByYW5kb20gc2l6ZSB3aXRoaW4gdGhlIGxpbWl0cyBvZiBlYWNo
IGJhY2tpbmcgc3RvcmUuIFdpdGgKcmVwZWF0ZWQgQ0kgcnVucyB0aGlzIHNob3VsZCBnaXZlIHVz
IGEgd2lkZXIgcmFuZ2Ugb2Ygb2JqZWN0IHNpemVzLCBhbmQKaW4gdHVybiBtb3JlIHBhZ2Utc2l6
ZSBjb21iaW5hdGlvbnMsIHdoaWxlIHVzaW5nIGxlc3MgbWFjaGluZSB0aW1lLgoKU2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogLi4uL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyAgIHwgMTk4ICsrKysrKysrKy0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDk0IGluc2VydGlvbnMoKyksIDEwNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCmluZGV4
IGQ0ODkyNzY5YjczOS4uMWQ3YzJhNTBkNjM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpAQCAtMTMxNCwyMCArMTMxNCwzMyBAQCBzdGF0
aWMgaW50IGlndF9wcGd0dF9leGhhdXN0X2h1Z2Uodm9pZCAqYXJnKQogCXJldHVybiBlcnI7CiB9
CiAKK3N0YXRpYyB1MzIgaWd0X3JhbmRvbV9zaXplKHN0cnVjdCBybmRfc3RhdGUgKnBybmcsCisJ
CQkgICB1MzIgbWluX3BhZ2Vfc2l6ZSwKKwkJCSAgIHUzMiBtYXhfcGFnZV9zaXplKQoreworCXU2
NCBtYXNrOworCXUzMiBzaXplOworCisJR0VNX0JVR19PTighaXNfcG93ZXJfb2ZfMihtaW5fcGFn
ZV9zaXplKSk7CisJR0VNX0JVR19PTighaXNfcG93ZXJfb2ZfMihtYXhfcGFnZV9zaXplKSk7CisJ
R0VNX0JVR19PTihtaW5fcGFnZV9zaXplIDwgUEFHRV9TSVpFKTsKKwlHRU1fQlVHX09OKG1pbl9w
YWdlX3NpemUgPiBtYXhfcGFnZV9zaXplKTsKKworCW1hc2sgPSAoKG1heF9wYWdlX3NpemUgPDwg
MVVMTCkgLSAxKSAmIFBBR0VfTUFTSzsKKwlzaXplID0gcHJhbmRvbV91MzJfc3RhdGUocHJuZykg
JiBtYXNrOworCWlmIChzaXplIDwgbWluX3BhZ2Vfc2l6ZSkKKwkJc2l6ZSB8PSBtaW5fcGFnZV9z
aXplOworCisJcmV0dXJuIHNpemU7Cit9CisKIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X2ludGVybmFs
X2h1Z2Uodm9pZCAqYXJnKQogewogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBhcmc7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjdHgtPmk5MTU7CiAJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHNpemVz
W10gPSB7Ci0JCVNaXzY0SywKLQkJU1pfMTI4SywKLQkJU1pfMjU2SywKLQkJU1pfNTEySywKLQkJ
U1pfMU0sCi0JCVNaXzJNLAotCX07Ci0JaW50IGk7CisJSTkxNV9STkRfU1RBVEUocHJuZyk7CisJ
dTMyIHNpemU7CiAJaW50IGVycjsKIAogCS8qCkBAIC0xMzM1LDQyICsxMzQ4LDM2IEBAIHN0YXRp
YyBpbnQgaWd0X3BwZ3R0X2ludGVybmFsX2h1Z2Uodm9pZCAqYXJnKQogCSAqIC0tIGVuc3VyZSB0
aGF0IG91ciB3cml0ZXMgbGFuZCBpbiB0aGUgcmlnaHQgcGxhY2UuCiAJICovCiAKLQlmb3IgKGkg
PSAwOyBpIDwgQVJSQVlfU0laRShzaXplcyk7ICsraSkgewotCQl1bnNpZ25lZCBpbnQgc2l6ZSA9
IHNpemVzW2ldOwotCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkx
NSwgc2l6ZSk7Ci0JCWlmIChJU19FUlIob2JqKSkKLQkJCXJldHVybiBQVFJfRVJSKG9iaik7CisJ
c2l6ZSA9IGlndF9yYW5kb21fc2l6ZSgmcHJuZywgU1pfNjRLLCBTWl8yTSk7CiAKLQkJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwotCQlpZiAoZXJyKQotCQkJZ290byBvdXRf
cHV0OwotCi0JCWlmIChvYmotPm1tLnBhZ2Vfc2l6ZXMucGh5cyA8IEk5MTVfR1RUX1BBR0VfU0la
RV82NEspIHsKLQkJCXByX2luZm8oImludGVybmFsIHVuYWJsZSB0byBhbGxvY2F0ZSBodWdlLXBh
Z2Uocykgd2l0aCBzaXplPSV1XG4iLAotCQkJCXNpemUpOwotCQkJZ290byBvdXRfdW5waW47Ci0J
CX0KKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIHNpemUpOwor
CWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKIAotCQllcnIgPSBpZ3Rf
d3JpdGVfaHVnZShjdHgsIG9iaik7Ci0JCWlmIChlcnIpIHsKLQkJCXByX2VycigiaW50ZXJuYWwg
d3JpdGUtaHVnZSBmYWlsZWQgd2l0aCBzaXplPSV1XG4iLAotCQkJICAgICAgIHNpemUpOwotCQkJ
Z290byBvdXRfdW5waW47Ci0JCX0KKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9i
aik7CisJaWYgKGVycikKKwkJZ290byBvdXRfcHV0OwogCi0JCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9wYWdlcyhvYmopOwotCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqLCBJOTE1X01N
X05PUk1BTCk7Ci0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKwlpZiAob2JqLT5tbS5wYWdl
X3NpemVzLnBoeXMgPCBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLKSB7CisJCXByX2luZm8oIiVzIHVu
YWJsZSB0byBhbGxvY2F0ZSBodWdlLXBhZ2Uocykgd2l0aCBzaXplPSV1XG4iLAorCQkJX19mdW5j
X18sIHNpemUpOworCQllcnIgPSAtRU5PTUVNOworCQlnb3RvIG91dF91bnBpbjsKIAl9CiAKLQly
ZXR1cm4gMDsKKwllcnIgPSBpZ3Rfd3JpdGVfaHVnZShjdHgsIG9iaik7CisJaWYgKGVycikKKwkJ
cHJfZXJyKCIlcyB3cml0ZS1odWdlIGZhaWxlZCB3aXRoIHNpemU9JXVcbiIsIF9fZnVuY19fLCBz
aXplKTsKIAogb3V0X3VucGluOgogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwor
CV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5MTVfTU1fTk9STUFMKTsKIG91dF9w
dXQ6CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogCisJaWYgKGVyciA9PSAtRU5PTUVNKQor
CQllcnIgPSAwOworCiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMTM4NCwxNCArMTM5MSw4IEBAIHN0
YXRpYyBpbnQgaWd0X3BwZ3R0X2dlbWZzX2h1Z2Uodm9pZCAqYXJnKQogCXN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHggPSBhcmc7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBj
dHgtPmk5MTU7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdGF0aWMgY29u
c3QgdW5zaWduZWQgaW50IHNpemVzW10gPSB7Ci0JCVNaXzJNLAotCQlTWl80TSwKLQkJU1pfOE0s
Ci0JCVNaXzE2TSwKLQkJU1pfMzJNLAotCX07Ci0JaW50IGk7CisJSTkxNV9STkRfU1RBVEUocHJu
Zyk7CisJdTMyIHNpemU7CiAJaW50IGVycjsKIAogCS8qCkBAIC0xNDAwLDQ2ICsxNDAxLDQwIEBA
IHN0YXRpYyBpbnQgaWd0X3BwZ3R0X2dlbWZzX2h1Z2Uodm9pZCAqYXJnKQogCSAqLwogCiAJaWYg
KCFpZ3RfY2FuX2FsbG9jYXRlX3RocChpOTE1KSkgewotCQlwcl9pbmZvKCJtaXNzaW5nIFRIUCBz
dXBwb3J0LCBza2lwcGluZ1xuIik7CisJCXByX2luZm8oIiVzIG1pc3NpbmcgVEhQIHN1cHBvcnQs
IHNraXBwaW5nXG4iLCBfX2Z1bmNfXyk7CiAJCXJldHVybiAwOwogCX0KIAotCWZvciAoaSA9IDA7
IGkgPCBBUlJBWV9TSVpFKHNpemVzKTsgKytpKSB7Ci0JCXVuc2lnbmVkIGludCBzaXplID0gc2l6
ZXNbaV07Ci0KLQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShpOTE1LCBzaXpl
KTsKLQkJaWYgKElTX0VSUihvYmopKQotCQkJcmV0dXJuIFBUUl9FUlIob2JqKTsKLQotCQllcnIg
PSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Ci0JCWlmIChlcnIpCi0JCQlnb3RvIG91
dF9wdXQ7CisJc2l6ZSA9IGlndF9yYW5kb21fc2l6ZSgmcHJuZywgU1pfMk0sIFNaXzMyTSk7CiAK
LQkJaWYgKG9iai0+bW0ucGFnZV9zaXplcy5waHlzIDwgSTkxNV9HVFRfUEFHRV9TSVpFXzJNKSB7
Ci0JCQlwcl9pbmZvKCJmaW5pc2hpbmcgdGVzdCBlYXJseSwgZ2VtZnMgdW5hYmxlIHRvIGFsbG9j
YXRlIGh1Z2UtcGFnZShzKSB3aXRoIHNpemU9JXVcbiIsCi0JCQkJc2l6ZSk7Ci0JCQlnb3RvIG91
dF91bnBpbjsKLQkJfQorCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwg
c2l6ZSk7CisJaWYgKElTX0VSUihvYmopKQorCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCi0JCWVy
ciA9IGlndF93cml0ZV9odWdlKGN0eCwgb2JqKTsKLQkJaWYgKGVycikgewotCQkJcHJfZXJyKCJn
ZW1mcyB3cml0ZS1odWdlIGZhaWxlZCB3aXRoIHNpemU9JXVcbiIsCi0JCQkgICAgICAgc2l6ZSk7
Ci0JCQlnb3RvIG91dF91bnBpbjsKLQkJfQorCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFn
ZXMob2JqKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9wdXQ7CiAKLQkJaTkxNV9nZW1fb2JqZWN0
X3VucGluX3BhZ2VzKG9iaik7Ci0JCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5
MTVfTU1fTk9STUFMKTsKLQkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCWlmIChvYmotPm1t
LnBhZ2Vfc2l6ZXMucGh5cyA8IEk5MTVfR1RUX1BBR0VfU0laRV8yTSkgeworCQlwcl9pbmZvKCIl
cyBmaW5pc2hpbmcgdGVzdCBlYXJseSwgZ2VtZnMgdW5hYmxlIHRvIGFsbG9jYXRlIGh1Z2UtcGFn
ZShzKSB3aXRoIHNpemU9JXVcbiIsCisJCQlfX2Z1bmNfXywgc2l6ZSk7CisJCWVyciA9IC1FTk9N
RU07CisJCWdvdG8gb3V0X3VucGluOwogCX0KIAotCXJldHVybiAwOworCWVyciA9IGlndF93cml0
ZV9odWdlKGN0eCwgb2JqKTsKKwlpZiAoZXJyKQorCQlwcl9lcnIoIiVzIHdyaXRlLWh1Z2UgZmFp
bGVkIHdpdGggc2l6ZT0ldVxuIiwgX19mdW5jX18sIHNpemUpOwogCiBvdXRfdW5waW46CiAJaTkx
NV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CisJX19pOTE1X2dlbV9vYmplY3RfcHV0X3Bh
Z2VzKG9iaiwgSTkxNV9NTV9OT1JNQUwpOwogb3V0X3B1dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0
KG9iaik7CiAKKwlpZiAoZXJyID09IC1FTk9NRU0pCisJCWVyciA9IDA7CisKIAlyZXR1cm4gZXJy
OwogfQogCkBAIC0xNDQ4LDEzICsxNDQzLDggQEAgc3RhdGljIGludCBpZ3RfcHBndHRfbG1lbV9o
dWdlKHZvaWQgKmFyZykKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4ID0gYXJnOwogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY3R4LT5pOTE1OwogCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBzaXplc1tdID0g
ewotCQlTWl82NEssCi0JCVNaXzUxMkssCi0JCVNaXzFNLAotCQlTWl8yTSwKLQl9OwotCWludCBp
OworCUk5MTVfUk5EX1NUQVRFKHBybmcpOworCXUzMiBzaXplOwogCWludCBlcnI7CiAKIAlpZiAo
IUhBU19MTUVNKGk5MTUpKSB7CkBAIC0xNDY3LDQ5ICsxNDU3LDQ5IEBAIHN0YXRpYyBpbnQgaWd0
X3BwZ3R0X2xtZW1faHVnZSh2b2lkICphcmcpCiAJICogLS0gZW5zdXJlIHRoYXQgb3VyIHdyaXRl
cyBsYW5kIGluIHRoZSByaWdodCBwbGFjZS4KIAkgKi8KIAotCWZvciAoaSA9IDA7IGkgPCBBUlJB
WV9TSVpFKHNpemVzKTsgKytpKSB7Ci0JCXVuc2lnbmVkIGludCBzaXplID0gc2l6ZXNbaV07Ci0K
LQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIHNpemUsIEk5MTVfQk9f
QUxMT0NfQ09OVElHVU9VUyk7Ci0JCWlmIChJU19FUlIob2JqKSkgewotCQkJZXJyID0gUFRSX0VS
UihvYmopOwotCQkJaWYgKGVyciA9PSAtRTJCSUcpIHsKLQkJCQlwcl9pbmZvKCJvYmplY3QgdG9v
IGJpZyBmb3IgcmVnaW9uIVxuIik7Ci0JCQkJcmV0dXJuIDA7Ci0JCQl9CisJc2l6ZSA9IFNaXzFH
OwordHJ5X2FnYWluOgorCXNpemUgPSBpZ3RfcmFuZG9tX3NpemUoJnBybmcsIFNaXzY0Sywgcm91
bmRkb3duX3Bvd19vZl90d28oc2l6ZSkpOwogCi0JCQlyZXR1cm4gZXJyOworCW9iaiA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBzaXplLCAwKTsKKwlpZiAoSVNfRVJSKG9iaikp
IHsKKwkJZXJyID0gUFRSX0VSUihvYmopOworCQlpZiAoZXJyID09IC1FMkJJRykgeworCQkJc2l6
ZSA+Pj0gMTsKKwkJCWdvdG8gdHJ5X2FnYWluOwogCQl9CiAKLQkJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9wYWdlcyhvYmopOwotCQlpZiAoZXJyKQotCQkJZ290byBvdXRfcHV0OwotCi0JCWlm
IChvYmotPm1tLnBhZ2Vfc2l6ZXMucGh5cyA8IEk5MTVfR1RUX1BBR0VfU0laRV82NEspIHsKLQkJ
CXByX2luZm8oIkxNRU0gdW5hYmxlIHRvIGFsbG9jYXRlIGh1Z2UtcGFnZShzKSB3aXRoIHNpemU9
JXVcbiIsCi0JCQkJc2l6ZSk7Ci0JCQlnb3RvIG91dF91bnBpbjsKLQkJfQorCQlyZXR1cm4gZXJy
OworCX0KIAotCQllcnIgPSBpZ3Rfd3JpdGVfaHVnZShjdHgsIG9iaik7Ci0JCWlmIChlcnIpIHsK
LQkJCXByX2VycigiTE1FTSB3cml0ZS1odWdlIGZhaWxlZCB3aXRoIHNpemU9JXVcbiIsIHNpemUp
OwotCQkJZ290byBvdXRfdW5waW47CisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhv
YmopOworCWlmIChlcnIpIHsKKwkJaWYgKGVyciA9PSAtRU5YSU8pIHsKKwkJCWk5MTVfZ2VtX29i
amVjdF9wdXQob2JqKTsKKwkJCXNpemUgPj49IDE7CisJCQlnb3RvIHRyeV9hZ2FpbjsKIAkJfQor
CQlnb3RvIG91dF9wdXQ7CisJfQogCi0JCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmop
OwotCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqLCBJOTE1X01NX05PUk1BTCk7Ci0J
CWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKwlpZiAob2JqLT5tbS5wYWdlX3NpemVzLnBoeXMg
PCBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLKSB7CisJCXByX2luZm8oIiVzIHVuYWJsZSB0byBhbGxv
Y2F0ZSBodWdlLXBhZ2Uocykgd2l0aCBzaXplPSV1XG4iLAorCQkJX19mdW5jX18sIHNpemUpOwor
CQllcnIgPSAtRU5PTUVNOworCQlnb3RvIG91dF91bnBpbjsKIAl9CiAKLQlyZXR1cm4gMDsKKwll
cnIgPSBpZ3Rfd3JpdGVfaHVnZShjdHgsIG9iaik7CisJaWYgKGVycikKKwkJcHJfZXJyKCIlcyB3
cml0ZS1odWdlIGZhaWxlZCB3aXRoIHNpemU9JXVcbiIsIF9fZnVuY19fLCBzaXplKTsKIAogb3V0
X3VucGluOgogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCV9faTkxNV9nZW1f
b2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5MTVfTU1fTk9STUFMKTsKIG91dF9wdXQ6CiAJaTkxNV9n
ZW1fb2JqZWN0X3B1dChvYmopOwogCi0JaWYgKGVyciA9PSAtRU5PTUVNKQorCWlmIChlcnIgPT0g
LUVOT01FTSB8fCBlcnIgPT0gLUVOWElPKQogCQllcnIgPSAwOwogCiAJcmV0dXJuIGVycjsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
